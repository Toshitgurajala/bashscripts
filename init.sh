#!/bin/bash
clear

echo "Welcome To MyShell!!"
echo "Type 'help' to see a list of all availiabe commands"


while true

do

read -p "#TG->" command

case "$command" in
  "help")
    bash help_commands.sh
    ;;
  "copy")
    bash copy.sh
    ;;
  "move")
    bash move.sh
    ;;
  "delete")
    bash delete.sh
    ;;
  "search")
    bash search.sh
    ;;
  "compress")
    bash compress.sh
    ;;
  "expand")
    bash expand.sh
    ;;
  "systeminfo")
    bash systeminfo.sh
    ;;
  "processmgmt")
    bash processmgmt.sh
    ;;
  "utility")
    bash /Users/toshitgurajala/Desktop/temp/utility.sh
    ;;
  "redirect-input")
    bash redirect-input.sh
    ;;
  "redirect-output")
    bash redirect-output.sh
    ;;
  "append-output")
    bash append-output.sh
    ;;
  "redirect-error")
    bash redirect-error.sh
    ;;
  "redirect-input-output")
    bash redirect-input-output.sh
    ;;
  "pipe")
    bash pipe.sh
    ;;
  "here-document")
    bash here-document.sh
    ;;
  "here-string")
    bash here-string.sh
    ;;
    "exit" )
    exec bash init.sh
    ;;
    "clear" )
    clear
     echo "Welcome To MyShell!!"
    echo "Type 'help' to see a list of all availiabe commands"
    ;;
     "clearstart" )
    clear
    echo "Welcome To MyShell!!"
    echo "Type 'help' to see a list of all availiabe commands"
    ;;
  *)
    echo "Invalid command. Please try again."
    ;;
esac

done