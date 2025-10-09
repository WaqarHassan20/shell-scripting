========= FILE PERMISSIONS (NUMERIC) =========


🔐 FILE PERMISSIONS (NUMERIC MODE)

| Symbol | Value | Description        |
| :----- | :---: | :----------------- |
| **r**  |   4   | Read permission    |
| **w**  |   2   | Write permission   |
| **x**  |   1   | Execute permission |


🧮 Add them up to set permissions

| Number | Symbol | Meaning                |
| :----: | :----: | :--------------------- |
|  **0** |  `---` | No permission          |
|  **1** |  `--x` | Execute only           |
|  **2** |  `-w-` | Write only             |
|  **3** |  `-wx` | Write + Execute        |
|  **4** |  `r--` | Read only              |
|  **5** |  `r-x` | Read + Execute         |
|  **6** |  `rw-` | Read + Write           |
|  **7** |  `rwx` | Read + Write + Execute |


🧱 Examples

| Command          | Owner | Group | Others | Description                                      |
| ---------------- | :---: | :---: | :----: | ------------------------------------------------ |
| `chmod 755 file` |  rwx  |  r-x  |   r-x  | Full access for owner, read + execute for others |
| `chmod 644 file` |  rw-  |  r--  |   r--  | Read + write for owner, read-only for others     |
| `chmod 700 file` |  rwx  |  ---  |   ---  | Full access for owner only                       |



========= 📝 VIM / VI COMMANDS =========


🧭 General Info

| Command       | Description                                                        |
| ------------- | ------------------------------------------------------------------ |
| `:help`       | Open the help manual in Vim.                                       |
| `#!/bin/bash` | **Shebang** – tells the system to run the script using Bash shell. |


✏️ Modes in Vim 

| Keys      | Mode / Action            | Description                              |
| --------- | ------------------------ | ---------------------------------------- |
| `Esc + i` | **Insert Mode**          | Start editing text.                      |
| `Esc + a` | **Append Mode**          | Add text after the cursor.               |
| `Esc + o` | **Open New Line**        | Insert a new line below the current one. |
| `Esc + I` | **Insert at Line Start** | Move to beginning and start editing.     |
| `Esc + A` | **Insert at Line End**   | Move to end and start editing.           |


💾 Save & Exit Commands

| Command       | Action                    |
| ------------- | ------------------------- |
| `:w`          | Save file.                |
| `:q`          | Quit Vim.                 |
| `:q!`         | Quit without saving.      |
| `:wq` or `:x` | Save and quit.            |
| `ZZ`          | Save and quit (shortcut). |


🧭 Navigation Commands

| Command | Action                   |
| ------- | ------------------------ |
| `h`     | Move left.               |
| `l`     | Move right.              |
| `k`     | Move up.                 |
| `j`     | Move down.               |
| `0`     | Jump to start of line.   |
| `$`     | Jump to end of line.     |
| `gg`    | Go to start of file.     |
| `G`     | Go to end of file.       |
| `:n`    | Go to line number **n**. |


✂️ Editing Commands

| Command    | Action                    |
| ---------- | ------------------------- |
| `x`        | Delete a character.       |
| `dd`       | Delete current line.      |
| `yy`       | Copy (yank) current line. |
| `p`        | Paste after cursor.       |
| `P`        | Paste before cursor.      |
| `u`        | Undo last change.         |
| `Ctrl + r` | Redo the undone change.   |


🔍 Search Commands

| Command | Action                               |
| ------- | ------------------------------------ |
| `/word` | Search **forward** for “word”.       |
| `?word` | Search **backward** for “word”.      |
| `n`     | Repeat search in same direction.     |
| `N`     | Repeat search in opposite direction. |


==================

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

### 🎓 Part 03 - Interview Preparation & Advanced Logic
**[01_DividingQuestion.sh](Part_03/01_DividingQuestion.sh)**
- **Purpose:** Mathematical logic implementation
- **What it does:** Finds numbers divisible by 3 or 5 but not by 15 (1-30 range)
- **Learning focus:** Conditional logic, mathematical operations, loop structures

**[02_InterviewQuestions.sh](Part_03/02_InterviewQuestions.sh)**
- **Purpose:** Comprehensive shell scripting interview preparation
- **Features:**
  - 23+ interview questions with detailed answers
  - Practical code examples and demonstrations
  - Advanced concepts (arrays, regex, error handling)
  - System administration challenges
  - International interview standards
- **Learning focus:** Interview preparation, best practices, advanced shell concepts

## ⚡ Usage Examples

### 🏃‍♂️ Quick Run Commands
```bash
# 📁 Create testing environment
./Part_01/01_First-Script.sh

# 🖥️ Check system health
./Part_02/01_Node_Health.sh

# 🔍 Explore grep functionality  
./Part_02/02_Grep_Command.sh

# 🧮 Test number division logic
./Part_03/01_DividingQuestion.sh

# 🎯 Study interview questions (source and call functions)
source Part_03/02_InterviewQuestions.sh
numbers_divisible_not_15  # Example function call
```

## 💡 Learning Highlights

| 🎯 Concept | 📝 Script | 🔑 Key Takeaway |
|------------|-----------|------------------|
| 📂 File Operations | `01_First-Script.sh` | Automated directory structure creation |
| 🛠️ System Monitoring | `01_Node_Health.sh` | Real-time system diagnostics |
| 🔍 Text Processing | `02_Grep_Command.sh` | Pattern matching and data extraction |
| 🧮 Mathematical Logic | `01_DividingQuestion.sh` | Complex conditional operations |
| 🎓 Interview Prep | `02_InterviewQuestions.sh` | Professional shell scripting knowledge |

## 🚨 Important Notes

- ⚠️ **Educational Purpose:** These scripts are for learning - test before production use!
- 🔒 **Security Best Practices:** Consider adding `set -euo pipefail` for safer scripts
- 🌐 **Portability:** POSIX-compatible constructs recommended for cross-platform use
- 🐧 **Environment:** Optimized for Linux environments

## 📊 Repository Stats

- 📁 **Total Scripts:** 5
- 🎯 **Learning Parts:** 3  
- 💻 **Languages:** Bash/Shell
- 🔥 **Interview Questions:** 23+
- 📅 **Last Updated:** October 2025

---

<div align="center">

**🚀 Happy Scripting! 🚀**

*Crafted with ❤️ by [Waqar Hassan](https://github.com/WaqarHassan20)*

[![⭐ Star this repo](https://img.shields.io/badge/⭐-Star%20this%20repo-yellow)](https://github.com/WaqarHassan20/shell-scripting)
[![🍴 Fork](https://img.shields.io/badge/🍴-Fork-blue)](https://github.com/WaqarHassan20/shell-scripting/fork)

</div>