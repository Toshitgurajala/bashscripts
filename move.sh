#!/bin/bash

move() {
    source=$1
    destination=$2

    if [[ ! -w $destination ]]; then
        echo "You do not have sufficient privileges to write to the destination directory." >&2
        echo "Moving files requires write access to the destination directory." >&2
        echo "Please run the script with appropriate privileges or provide a different destination directory." >&2
        exit 1
    fi

    if [[ -e $source ]]; then
        progress -mw
        mv -i "$source" "$destination"
        if [ $? -eq 0 ]; then
            echo "Moved '$source' to '$destination'"
        else
            echo "Failed to move '$source'" >&2
        fi
    else
        echo "Source '$source' does not exist or is not accessible" >&2
    fi
}

read -p "Enter Source File or Directory: " source
read -p "Enter Destination Directory:" destination

move "$source" "$destination"
