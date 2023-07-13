#!/bin/bash

check_directory() {
  local directory="$1"
  if [ -d "$directory" ]; then
    echo "Directory '$directory' exists."
  else
    echo "Directory '$directory' does not exist."
  fi
}


check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "File '$file' exists."
  else
    echo "File '$file' does not exist."
  fi
}

count_files() {
  local directory="$1"
  local count=0
  if [ -d "$directory" ]; then
    count=$(ls -1 "$directory" | wc -l)
  else
    echo "Directory '$directory' does not exist."
    return
  fi
  echo "Number of files in '$directory': $count"
}


get_current_datetime() {
  date +"%Y-%m-%d %H:%M:%S"
}

display_system_info() {
  echo "System Information:"
  echo "--------------------"
  echo "Hostname: $(hostname)"
  echo "Operating System: $(uname -a)"
  echo "CPU: $(uname -p)"
  echo "Memory: $(grep MemTotal /proc/meminfo | awk '{print $2}') kB"
  echo "Disk Usage: $(df -h / | awk 'NR==2{print $3 "/" $2 " (" $5 " used)"}')"
}

help(){
echo "Welcome to Utility Management. Choose an option:"
echo "1. Check Directory"
echo "2. Check File"
echo "3. Get Current Date and Time"
echo "4. Display System Information"
echo "5. check Number of files in Dir"
echo "6. To Exit"
echo "7. For help"
}
help
while true
do
read -p "Enter your choice (1-7): " choice
case $choice in
  1)
    read -p "Enter directory path: " directory
    check_directory "$directory"
    ;;
  2)
    read -p "Enter file path: " file
    check_file "$file"
    ;;
  3)
    echo "Current date and time: $(get_current_datetime)"
    ;;
  4)
    display_system_info
    ;;
  5)
  read -p "Enter directory path: " directory1
  count_files $directory1
  ;;
  6)
    break
    ;;
  7)
  help
  ;;
  *)
    echo "Invalid choice. Please enter a valid option (1-4)."
    ;;
esac
done