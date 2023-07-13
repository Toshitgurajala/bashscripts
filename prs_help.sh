#!/bin/bash

help_text=$'=== Process Management Help ===\n
Here are the available commands for Process Management:
\n\n- rpr: Run the \'top\' command to display real-time system information.
\n- ps: Show a list of active processes.
\n- ps -a: Show a list of all processes, including those running in the background.
\n- q or Q: Quit the Process Management program.
\n- pk -9 [pid]: Terminate a process forcefully by providing the process ID (pid).
\n\nRemember to enter the commands exactly as mentioned, including any required parameters.
\n\nEnjoy using Process Management!\n'

# Echo the help text for prs -help
echo -e "$help_text"
