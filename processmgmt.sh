#!/bin/bash

echo "Welcome to Process Management. Type 'prs -help' to know the commands."
echo "To return to the main screen, press 'q' or 'Q'."

while true 
do
    read -p "#TG>P-> " pmp
    lower_pmp=$(echo "$pmp" | tr '[:upper:]' '[:lower:]')

    case "$lower_pmp" in
        "rpr")
            top
            ;;
        "ps")
            ps
            ;;
        "ps -a")
            ps -a
            ;;
        "q" | "Q")
            break
            ;;
       pk\ -9*)
            com=$(echo "$pmp" | awk '{print $2}')
            echo "$com"
            kill -9 "$com"
            ;;
            "prs -help")
            bash prs_help.sh
            ;;
            *)
            echo "Invalid command. Please try again."
           ;;
    esac
done