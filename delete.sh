#!/bin/bash

delete() {
  target=$1

  if [[ ! -w $target ]]; then
    echo "You do not have sufficient privileges to delete the target."
    echo "Deleting files or directories requires write access."
    echo "Please run the script with appropriate privileges or provide a different target."
    exit 1
  fi

  if [[ -f $target ]]; then
    echo "[Y/N]"
    rm -i "$target"
    echo "File '$target' deleted."
  elif [[ -d $target ]]; then
    read -p "Are you sure you want to delete the directory '$target'? (y/n): " confirm
    if [[ $confirm =~ ^[Yy]$ ]]; then
      rm -r "$target"
      echo "Directory '$target' deleted."
    else
      echo "Directory not deleted."
    fi
  else
    echo "Target '$target' does not exist or is not accessible."
  fi
}

read -p "Enter the file or directory to delete: " target

delete "$target"
