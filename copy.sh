#!/bin/bash
copy()
{
    source=$1
    destination=$2

    if [[ ! -w $destination ]]; then
    echo "You do not have sufficient privileges to write to the destination directory."
    echo "Copying files requires write access to the destination directory."
    echo "Please run the script with appropriate privileges or provide a different destination directory."
    exit 1
    fi

    if [[ -f $source ]]; then

    rsync -av --progress "$source" "$destination"
    echo "File copied from '$source' to '$destination'"

    

    elif [[ -d $source ]]; then

    rsync -av --progress "$source" "$destination"
    echo "Directory copied from '$source' to '$destination'"

    else
    echo "Source '$source' does not exist or is not accessible"
    fi


}

read -p "Enter Source File or Directory: " source
read -p "Enter Destination Directory:" destination

copy "$source" "$destination"

