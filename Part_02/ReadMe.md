# 🧠 SHELL COMMANDS

🧮 System Monitoring Commands

| Command   | Acronym / Full Form  | Function                                      |
| --------- | -------------------- | --------------------------------------------- |
| `top`     | Table Of Processes   | Display running processes and system usage.   |
| `htop`    | Human Top            | Interactive and colorful version of `top`.    |
| `df -h`   | Disk Free            | Show disk space usage in human-readable form. |
| `free -g` | Free Memory          | Display RAM usage in gigabytes.               |
| `nproc`   | Number of Processors | Show available CPU cores.                     |


⚙️ Process Management Commands

| Command                                                            | Acronym / Full Form                      | Function                                                                   |
| ----------------------------------------------------------------| ---------------------------------------- | ----------------------------------------------------------------------------- |
| `ps`                                                            | **Process Status**                       | Displays the list of currently running processes.                             |
| `ps -ef`                                                        | **Process Status (Every + Full format)** | Shows all system processes with complete details like PID, UID, and command.  |
| `ps -ef | grep "process_name"`                                  | —                                        | Filters and displays processes that match a specific name.                    |
| `ps -ef | grep process_name | awk -F " " '{print $column_name}' | —                                        | Extracts a specific column (like PID or user) from the filtered process list. |
| `ps -ef | grep chrome | awk -F " " '{print $2}'                 | —                                        | Prints the **Process ID (PID)** of all Chrome processes.                      |


| Part          | Purpose                                           |
| ------------- | ------------------------------------------------- |
| `grep "name"` | Finds all lines that contain the word “name”.     |
| `awk -F " "`  | Uses space as field separator.                    |
| `{print $2}`  | Prints the **second word** of each matching line. |


🔍 Search Commands

| Command                        | Acronym / Full Form             | Function                                           |
| ------------------------------ | ------------------------------- | -------------------------------------------------- |
| `grep`                         | Global Regular Expression Print | Search for text patterns in files or outputs.      |
| `grep string_value file_name`  | —                               | Search for a string inside a specific file.        |
| `grep name 02_Grep_Command.sh` | —                               | Search for the word “name” inside the script file. |


🌐 NETWORK DOWNLOAD COMMANDS

| Command    | Acronym / Full Form    | Function                                                                                          |
| ---------- | ---------------------- | ------------------------------------------------------------------------------------------------- |
| **`wget`** | **World Wide Web Get** | Used to **download files** from the web (HTTP, HTTPS, FTP) directly to your local system.         |
| **`curl`** | **Client URL**         | Used to **transfer data** to or from a server using various protocols like HTTP, HTTPS, FTP, etc. |


----------------------
date | echo "Date is"
❌ Problem:
This command is incorrect because the pipe (|) sends the output of the first command (date) as input
to the second command (echo), but echo does not read from standard input, so the date output is ignored.
--------------------------------------------------------------------------------------------------------


🧠 Explanation (IF ELSE COMMAND)

| Keyword | Meaning             | Description                            |
| ------- | ------------------- | -------------------------------------- |
| `if`    | Start of condition  | Begins an if-statement block           |
| `then`  | Execute commands    | Runs commands if condition is true     |
| `else`  | Optional block      | Runs commands if condition is false    |
| `fi`    | End of if-statement | Marks the end of the conditional block |


# awk command
- awk is a powerful text processing and pattern scanning tool used to search, filter
- format text or data — mostly in structured files like logs, CSVs, or command outputs.