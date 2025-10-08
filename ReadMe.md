============================================================
=================== 🧠 SHELL COMMANDS ======================
============================================================

📂 Basic File & Directory Commands

| Command      | Acronym / Full Form     | Function                                                  |
| ------------ | ----------------------- | --------------------------------------------------------- |
| `touch`      | —                       | Create an empty file or update file timestamps.           |
| `mkdir`      | Make Directory          | Create a new directory.                                   |
| `echo`       | —                       | Display a line of text or variable value.                 |
| `pwd`        | Print Working Directory | Show the current working directory path.                  |
| `man`        | Manual                  | Show the manual/help page of a command.                   |
| `cat`        | Concatenate             | Display contents of a file.                               |
| `cd`         | Change Directory        | Move into a directory.                                    |
| `cd ..`      | Change Directory (Up)   | Move one level up in directory tree.                      |
| `ls`         | List                    | List files and directories.                               |
| `ls -ltr`    | List Long Time Reverse  | List files with details sorted by modification time.      |
| `./filename` | —                       | Execute a script or binary file in the current directory. |


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



date | echo "Date is"
❌ Problem:
This command is incorrect because the pipe (|) sends the output of the first command (date) as input
to the second command (echo), but echo does not read from standard input, so the date output is ignored.


============================================================
================ FILE PERMISSIONS (NUMERIC) ================
============================================================

r = 4   (read)
w = 2   (write)
x = 1   (execute)

Add them up to set permissions:

0 = ---   (no permission)
1 = --x   (execute only)
2 = -w-   (write only)
3 = -wx   (write + execute)
4 = r--   (read only)
5 = r-x   (read + execute)
6 = rw-   (read + write)
7 = rwx   (read + write + execute)

Examples:

chmod 755 file   -> rwx for owner, r-x for group, r-x for others
chmod 644 file   -> rw- for owner, r-- for group, r-- for others
chmod 700 file   -> rwx for owner, --- for group, --- for others


============================================================
====================== VI COMMANDS =========================
============================================================


:help                -> Open help manual

#!/bin/bash   "#!/" this notation is called shebang

=== Modes ===
Esc + i              -> Insert mode (start editing)
Esc + a              -> Append text after cursor
Esc + o              -> Open a new line below
Esc + I              -> Insert at beginning of line
Esc + A              -> Insert at end of line

=== Save & Exit ===
:w                   -> Save file
:q                   -> Quit
:q!                  -> Quit without saving
:wq OR :x            -> Save and quit
ZZ                   -> Save and quit (shortcut)

=== Navigation ===
h                    -> Move left
l                    -> Move right
k                    -> Move up
j                    -> Move down
0                    -> Jump to start of line
$                    -> Jump to end of line
gg                   -> Go to start of file
G                    -> Go to end of file
:n                   -> Go to line number n

=== Editing ===
x                    -> Delete character
dd                   -> Delete current line
yy                   -> Copy (yank) current line
p                    -> Paste after cursor
P                    -> Paste before cursor
u                    -> Undo last change
Ctrl + r             -> Redo

=== Search ===
/word                -> Search forward for "word"
?word                -> Search backward for "word"
n                    -> Repeat search in same direction
N                    -> Repeat search in opposite direction

============================================================
============================================================
============================================================


# 🐚 My Shell Scripting Journey

Welcome to my personal collection of Bash scripts! This repository documents my learning path through shell scripting, from basic file operations to system monitoring. Each script is crafted with care and includes practical examples you can run and modify.

## 🚀 Getting Started

**Requirements:**
- Any Linux distribution with Bash shell
- Basic terminal knowledge

**Quick Setup:**
```bash
# Clone the repository
git clone https://github.com/WaqarHassan20/shell-scripting.git
cd shell-scripting

# Make any script executable and run it
chmod +x Part_01/01_First-Script.sh
./Part_01/01_First-Script.sh
```

## 📂 What's Inside

### 🎯 Part 01 - Foundation Scripts
**[01_First-Script.sh](Part_01/01_First-Script.sh)**
- **Purpose:** Directory and file creation automation
- **What it does:** Sets up a testing environment with TypeScript and Python sample files
- **Learning focus:** Basic file system operations, mkdir, touch commands

### 🔧 Part 02 - System Administration
**[01_Node_Health.sh](Part_02/01_Node_Health.sh)**
- **Purpose:** System health monitoring and diagnostics
- **Features:** 
  - Disk space analysis (`df -h`)
  - Memory usage monitoring (`free -g`)  
  - CPU core detection (`nproc`)
  - Advanced error handling with `set -xeo pipefail`
- **Learning focus:** System monitoring, shell options, error handling

**[02_Grep_Command.sh](Part_02/02_Grep_Command.sh)**
- **Purpose:** Text processing and pattern matching demonstration
- **Learning focus:** Grep operations, text manipulation, output formatting

## ⚡ Usage Examples

### 🏃‍♂️ Quick Run Commands
```bash
# 📁 Create testing environment
./Part_01/01_First-Script.sh

# 🖥️ Check system health
./Part_02/01_Node_Health.sh

# 🔍 Explore grep functionality  
./Part_02/02_Grep_Command.sh
```

## 💡 Learning Highlights

| 🎯 Concept | 📝 Script | 🔑 Key Takeaway |
|------------|-----------|------------------|
| 📂 File Operations | `01_First-Script.sh` | Automated directory structure creation |
| 🛠️ System Monitoring | `01_Node_Health.sh` | Real-time system diagnostics |
| 🔍 Text Processing | `02_Grep_Command.sh` | Pattern matching and data extraction |

## 🚨 Important Notes

- ⚠️ **Educational Purpose:** These scripts are for learning - test before production use!
- 🔒 **Security Best Practices:** Consider adding `set -euo pipefail` for safer scripts
- 🌐 **Portability:** POSIX-compatible constructs recommended for cross-platform use
- 🐧 **Environment:** Optimized for Linux environments

## 📊 Repository Stats

- 📁 **Total Scripts:** 3
- 🎯 **Learning Parts:** 2  
- 💻 **Languages:** Bash/Shell
- 📅 **Last Updated:** October 2025

---

<div align="center">

**🚀 Happy Scripting! 🚀**

*Crafted with ❤️ by [Waqar Hassan](https://github.com/WaqarHassan20)*

[![⭐ Star this repo](https://img.shields.io/badge/⭐-Star%20this%20repo-yellow)](https://github.com/WaqarHassan20/shell-scripting)
[![🍴 Fork](https://img.shields.io/badge/🍴-Fork-blue)](https://github.com/WaqarHassan20/shell-scripting/fork)

</div>