#!/bin/bash
echo
echo " help: Display information on availiable commands and their usages"

echo

echo " copy:"
echo "   Usage: copy [OPTIONS] SOURCE... DESTINATION"
echo "   Description: Copy files and directories. Supports recursive copying and progress indicators."
echo

echo " move:"
echo "   Usage: move [OPTIONS] SOURCE... DESTINATION"
echo "   Description: Move files and directories. Supports moving multiple items simultaneously and preserving metadata."
echo

echo " delete:"
echo "   Usage: delete [OPTIONS] FILE..."
echo "   Description: Delete files and directories. Supports batch deletion, interactive prompts, and recursive deletion."
echo

echo " search:"
echo "   Usage: search [OPTIONS] DIRECTORY PATTERN"
echo "   Description: Search for files based on criteria such as name, size, modification date, and content. Supports recursive searching."
echo

echo " compress:"
echo "   Usage: compress [OPTIONS] FILE..."
echo "   Description: Compress files or directories. Supports various compression algorithms and options for compression level and preserving file permissions."
echo

echo " expand:"
echo "   Usage: expand [OPTIONS] FILE..."
echo "   Description: Decompress files or directories. Supports various compressed file formats and options for preserving file permissions and extracting to a specific directory."
echo

echo " systeminfo:"
echo "   Usage: systeminfo"
echo "   Description: Display comprehensive system information, including hardware details, disk usage, network information, and software configuration."
echo

echo " processmgmt:"
echo "   Usage: processmgmt [OPTIONS]"
echo "   Description: List running processes with process IDs (PIDs), memory usage, and CPU usage. Supports sorting, filtering, and detailed process information."
echo

echo " utility:"
echo "    Usage: utility [UTILITY] [OPTIONS]"
echo "    Description: Run commonly used utility programs (e.g., grep, sed, awk, find) with a simplified and consistent syntax."
echo

echo " redirect-input:"
echo "    Usage: redirect-input FILE COMMAND"
echo "    Description: Redirect the contents of a file as input to a command."
echo

echo " redirect-output:"
echo "    Usage: redirect-output COMMAND FILE"
echo "    Description: Redirect the output of a command to a file."
echo

echo " append-output:"
echo "    Usage: append-output COMMAND FILE"
echo "    Description: Append the output of a command to a file."
echo

echo " redirect-error:"
echo "    Usage: redirect-error COMMAND ERROR_FILE"
echo "    Description: Redirect the error output (stderr) of a command to a file."
echo

echo " redirect-input-output:"
echo "    Usage: redirect-input-output INPUT_FILE COMMAND OUTPUT_FILE"
echo "    Description: Redirect both input and output using files for a command."
echo

echo " pipe:"
echo "    Usage: command1 | command2"
echo "    Description: Connect the output of command1 as the input to command2 using a pipe."
echo

echo " here-document:"
echo "    Usage: command << END_MARKER"
echo "    Description: Pass a block of text as input to a command."
echo

echo " here-string:"
echo "    Usage: command <<< "TEXT""
echo "    Description: Pass a string as input to a command."
echo
echo "  exit: close terminal"
echo
echo "  clear: clearscreen"
echo
echo "  ls: list Directory"
echo


