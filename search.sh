#!/bin/bash

search() {
  directory=$1
  keyword=$2

  # Check if the specified directory exists
  if [[ ! -d $directory ]]; then
    echo "Directory '$directory' does not exist or is not accessible."
    exit 1
  fi

  echo "Searching for '$keyword' in '$directory':"
  echo

  # Perform the search using the 'find' command
  find "$directory" -iname "*$keyword*" -print0 | while IFS= read -r -d '' file; do
    echo "$file"
  done
}

# Read user input
read -p "Enter the directory to search in: " directory
read -p "Enter the keyword to search for: " keyword

# Call the search function
search "$directory" "$keyword"
