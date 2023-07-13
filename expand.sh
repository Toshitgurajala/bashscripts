#!/bin/bash

expand() {
  archive=$1
  destination=$2

  
  if [[ ! -f $archive ]]; then
    echo "Archive file '$archive' does not exist or is not accessible."
    exit 1
  fi

  
  mkdir -p "$destination"


  tar -xzf "$archive" -C "$destination" && echo "Expansion complete. Archive extracted to: $destination"
}


read -p "Enter the archive file to expand: " archive
read -p "Enter the destination directory: " destination


expand "$archive" "$destination"
