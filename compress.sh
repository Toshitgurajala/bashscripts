#!/bin/bash

compress() {
  source=$1
  destination="${source%/*}"

  if [[ ! -e $source ]]; then
    echo "Source '$source' does not exist or is not accessible."
    exit 1
  fi

  tar -czf "${destination}/${source##*/}.tar.gz" -C "${source%/*}" "${source##*/}" && echo "Compression complete. Archive created: ${destination}/${source##*/}.tar.gz"
}

read -p "Enter the source file or directory: " source


compress "$source"
