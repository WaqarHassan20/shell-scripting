#!/bin/bash

################################################################################
# 🎯 SHELL SCRIPTING INTERVIEW QUESTIONS & ANSWERS
# Author: Github Copilot Pro Version with Claude Sonnet 4 model
# Date: October 8, 2025
# Description: Comprehensive collection of shell scripting interview Q&A
################################################################################

# ============================================================================
# 📚 BASIC SHELL SCRIPTING QUESTIONS
# ============================================================================

# Q1: What do you know about shell scripting or bash language?
# ANSWER:
# Shell scripting is a command-line interpreter that allows automation of tasks.
# Bash (Bourne Again Shell) is the most popular shell in Linux/Unix systems.
# Key features:
# - Automation of repetitive tasks
# - System administration
# - Text processing and file manipulation
# - Process control and job scheduling
# - Variables, loops, conditions, and functions

# Q2: List some commonly used shell commands in daily life?
# ANSWER:
echo "Common shell commands:"
echo "ls - list directory contents"
echo "cd - change directory" 
echo "mkdir - create directories"
echo "cp - copy files/directories"
echo "mv - move/rename files"
echo "rm - remove files"
echo "grep - search text patterns"
echo "find - search files and directories"
echo "chmod - change permissions"
echo "ps - list running processes"
echo "top - display running processes"
echo "df - disk space usage"
echo "du - directory space usage"
echo "tar - archive files"
echo "wget/curl - download files"

# Q3: Write a simple shell script to list all processes?
# ANSWER:
list_processes() {
    echo "=== All Running Processes ==="
    ps aux
    echo ""
    echo "=== Process Tree ==="
    pstree
    echo ""
    echo "=== Memory-wise Top Processes ==="
    ps aux --sort=-%mem | head -10
}

# Q4: Write a script to print only errors from a remote log?
# ANSWER:
print_errors_from_log() {
    local logfile="$1"
    if [ -f "$logfile" ]; then
        echo "=== ERROR LOGS ==="
        grep -i "error\|fail\|exception\|critical" "$logfile"
    else
        echo "Log file not found: $logfile"
    fi
}

# Alternative for remote log:
# ssh user@server 'grep -i "error\|fail" /var/log/application.log'

# Q5: Write a script to print numbers divided by 3 and 5 but not by 15?
# ANSWER:
numbers_divisible_not_15() {
    echo "Numbers divisible by 3 or 5 but not by 15 (1-100):"
    for i in {1..100}; do
        if (( (i % 3 == 0 || i % 5 == 0) && i % 15 != 0 )); then
            echo -n "$i "
        fi
    done
    echo ""
}

# Q6: Write a script to count 'S' in the word "mississippi"?
# ANSWER:
count_s_in_mississippi() {
    word="mississippi"
    count=$(echo "$word" | grep -o 's' | wc -l)
    echo "Number of 's' in '$word': $count"
    
    # Alternative methods:
    # Method 2: Using parameter expansion
    temp=${word//[^s]/}
    echo "Using parameter expansion: ${#temp}"
    
    # Method 3: Using awk
    echo "$word" | awk '{print gsub(/s/, "")}'
}

# Q7: How will you debug shell scripts?
# ANSWER:
# Debugging techniques:
echo "Shell Script Debugging Methods:"
echo "1. set -x    # Enable debug mode (shows commands being executed)"
echo "2. set -e    # Exit immediately on error"
echo "3. set -u    # Exit on undefined variables"
echo "4. set -o pipefail  # Pipeline fails if any command fails"
echo "5. bash -x script.sh  # Run script in debug mode"
echo "6. Add echo statements for variable values"
echo "7. Use shellcheck for static analysis"
echo "8. trap 'echo Line: \$LINENO' DEBUG  # Show line numbers"

# Q8: What is crontab in Linux? Provide usage examples.
# ANSWER:
crontab_examples() {
    echo "Crontab is a time-based job scheduler in Unix-like systems"
    echo "Format: minute hour day month day-of-week command"
    echo ""
    echo "Examples:"
    echo "# Run every minute"
    echo "* * * * * /path/to/script.sh"
    echo ""
    echo "# Run daily at 2:30 AM"
    echo "30 2 * * * /path/to/backup.sh"
    echo ""
    echo "# Run every Monday at 9 AM"
    echo "0 9 * * 1 /path/to/weekly-report.sh"
    echo ""
    echo "# Run every 15 minutes"
    echo "*/15 * * * * /path/to/monitor.sh"
    echo ""
    echo "Commands:"
    echo "crontab -e  # Edit crontab"
    echo "crontab -l  # List crontab entries"
    echo "crontab -r  # Remove all crontab entries"
}

# Q9: How to open a file as read-only?
# ANSWER:
readonly_file_examples() {
    echo "Methods to open files as read-only:"
    echo "1. vim -R filename     # Vim read-only mode"
    echo "2. view filename       # Vim read-only (view command)"
    echo "3. less filename       # Pager (read-only by default)"
    echo "4. more filename       # Another pager"
    echo "5. cat filename        # Display content (read-only)"
    echo "6. chmod 444 filename  # Make file read-only for all"
    echo "7. chmod -w filename   # Remove write permission"
}

# Q10: What is the difference between soft and hard links?
# ANSWER:
link_differences() {
    echo "=== HARD LINKS vs SOFT LINKS ==="
    echo ""
    echo "HARD LINKS:"
    echo "- Point directly to inode"
    echo "- Same inode number as original"
    echo "- Cannot cross file systems"
    echo "- Cannot link to directories"
    echo "- Original file deletion doesn't affect hard link"
    echo "- Command: ln source_file hard_link"
    echo ""
    echo "SOFT LINKS (Symbolic Links):"
    echo "- Point to file path (like shortcuts)"
    echo "- Different inode number"
    echo "- Can cross file systems"
    echo "- Can link to directories"
    echo "- Broken if original file is deleted"
    echo "- Command: ln -s source_file soft_link"
}

# Q11: What are disadvantages of shell scripting?
# ANSWER:
shell_disadvantages() {
    echo "Disadvantages of Shell Scripting:"
    echo "1. Performance - Slower than compiled languages"
    echo "2. Complex data structures - Limited support"
    echo "3. Platform dependent - Different shells have different features"
    echo "4. Error handling - Limited exception handling"
    echo "5. Debugging - Can be challenging for complex scripts"
    echo "6. Security - Potential for injection attacks"
    echo "7. Maintenance - Large scripts become hard to maintain"
    echo "8. Portability - Not all shells support same features"
}

# ============================================================================
# 🌟 ADVANCED INTERNATIONAL INTERVIEW QUESTIONS
# ============================================================================

# Q12: Explain different types of shells and their differences
shell_types() {
    echo "=== SHELL TYPES ==="
    echo "1. Bourne Shell (sh) - Original Unix shell"
    echo "2. Bash (bash) - Bourne Again Shell, most popular"
    echo "3. C Shell (csh) - C-like syntax"
    echo "4. Korn Shell (ksh) - Enhanced Bourne shell"
    echo "5. Z Shell (zsh) - Extended bash with plugins"
    echo "6. Fish Shell - User-friendly with syntax highlighting"
    echo "7. Dash - Debian Almquist Shell, lightweight"
}

# Q13: What are shell built-in commands vs external commands?
builtin_vs_external() {
    echo "=== BUILT-IN vs EXTERNAL COMMANDS ==="
    echo "Built-in commands (executed by shell itself):"
    echo "cd, echo, pwd, export, alias, history, source"
    echo ""
    echo "External commands (separate executable files):"
    echo "ls, grep, awk, sed, find, sort, uniq"
    echo ""
    echo "Check command type:"
    echo "type cd    # Shows: cd is a shell builtin"
    echo "type ls    # Shows: ls is /bin/ls"
    echo "which ls   # Shows path of external command"
}

# Q14: Explain different types of variables in shell
variable_types() {
    echo "=== SHELL VARIABLE TYPES ==="
    
    # Local variables
    local_var="Local to this function"
    echo "1. Local Variables: $local_var"
    
    # Global variables
    GLOBAL_VAR="Available throughout script"
    echo "2. Global Variables: $GLOBAL_VAR"
    
    # Environment variables
    export ENV_VAR="Available to child processes"
    echo "3. Environment Variables: $ENV_VAR"
    
    # Special variables
    echo "4. Special Variables:"
    echo "   \$0 - Script name"
    echo "   \$1, \$2 - Positional parameters"
    echo "   \$# - Number of parameters"
    echo "   \$@ - All parameters as array"
    echo "   \$* - All parameters as string"
    echo "   \$? - Exit status of last command"
    echo "   \$\$ - Process ID of current shell"
    echo "   \$! - Process ID of last background job"
}

# Q15: How do you handle command line arguments?
handle_arguments() {
    echo "=== COMMAND LINE ARGUMENT HANDLING ==="
    echo "Script name: $0"
    echo "Total arguments: $#"
    echo "All arguments: $@"
    
    if [ $# -eq 0 ]; then
        echo "No arguments provided"
        echo "Usage: $0 <arg1> <arg2> ..."
        return 1
    fi
    
    # Loop through arguments
    echo "Processing arguments:"
    for arg in "$@"; do
        echo "Argument: $arg"
    done
    
    # Using getopts for options
    echo "Example with getopts:"
    echo 'while getopts "hv:f:" opt; do'
    echo '  case $opt in'
    echo '    h) echo "Help" ;;'
    echo '    v) echo "Verbose: $OPTARG" ;;'
    echo '    f) echo "File: $OPTARG" ;;'
    echo '  esac'
    echo 'done'
}

# Q16: Explain process substitution and command substitution
substitution_examples() {
    echo "=== SUBSTITUTION TYPES ==="
    
    echo "1. Command Substitution:"
    current_date=$(date)
    echo "Current date using \$(): $current_date"
    
    current_user=`whoami`
    echo "Current user using backticks: $current_user"
    
    echo ""
    echo "2. Process Substitution:"
    echo "Compare two command outputs:"
    echo "diff <(ls /tmp) <(ls /var/tmp)"
    echo ""
    echo "3. Parameter Substitution:"
    filename="/path/to/file.txt"
    echo "Filename: ${filename##*/}"      # file.txt
    echo "Directory: ${filename%/*}"      # /path/to
    echo "Extension: ${filename##*.}"     # txt
    echo "Name without extension: ${filename%.*}"  # /path/to/file
}

# Q17: How to implement error handling and logging?
error_handling_demo() {
    echo "=== ERROR HANDLING & LOGGING ==="
    
    # Enable strict error handling
    set -euo pipefail
    
    # Custom error handling function
    error_exit() {
        echo "ERROR: $1" >&2
        exit 1
    }
    
    # Logging function
    log() {
        local level="$1"
        shift
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$level] $*" | tee -a script.log
    }
    
    # Usage examples
    log "INFO" "Script started"
    log "ERROR" "Something went wrong"
    log "DEBUG" "Debug information"
    
    # Trap for cleanup
    cleanup() {
        log "INFO" "Cleaning up..."
        # Remove temporary files, etc.
    }
    
    trap cleanup EXIT
    trap 'error_exit "Script interrupted"' INT TERM
}

# Q18: Explain different types of operators
operators_demo() {
    echo "=== SHELL OPERATORS ==="
    
    echo "1. Arithmetic Operators:"
    a=10; b=5
    echo "a=$a, b=$b"
    echo "Addition: $((a + b))"
    echo "Subtraction: $((a - b))"
    echo "Multiplication: $((a * b))"
    echo "Division: $((a / b))"
    echo "Modulo: $((a % b))"
    
    echo ""
    echo "2. Comparison Operators:"
    echo "String comparison: [ \"abc\" = \"abc\" ]"
    echo "Numeric comparison: [ 10 -gt 5 ]"
    echo "-eq, -ne, -lt, -le, -gt, -ge"
    
    echo ""
    echo "3. Logical Operators:"
    echo "&& (AND), || (OR), ! (NOT)"
    echo "[ condition1 ] && [ condition2 ]"
    
    echo ""
    echo "4. File Test Operators:"
    echo "-f (regular file), -d (directory), -r (readable)"
    echo "-w (writable), -x (executable), -s (non-empty)"
}

# Q19: How to work with arrays in bash?
array_operations() {
    echo "=== ARRAY OPERATIONS ==="
    
    # Indexed arrays
    fruits=("apple" "banana" "orange" "mango")
    echo "Indexed Array: ${fruits[@]}"
    echo "First element: ${fruits[0]}"
    echo "Array length: ${#fruits[@]}"
    
    # Add element
    fruits+=("grape")
    echo "After adding grape: ${fruits[@]}"
    
    # Loop through array
    echo "Looping through array:"
    for fruit in "${fruits[@]}"; do
        echo "  - $fruit"
    done
    
    # Associative arrays (bash 4+)
    declare -A colors
    colors[red]="#FF0000"
    colors[green]="#00FF00"
    colors[blue]="#0000FF"
    
    echo "Associative Array:"
    for color in "${!colors[@]}"; do
        echo "  $color: ${colors[$color]}"
    done
}

# Q20: Explain regular expressions in shell scripting
regex_examples() {
    echo "=== REGULAR EXPRESSIONS ==="
    
    text="Contact: john@example.com or call 123-456-7890"
    
    echo "Original text: $text"
    echo ""
    
    # Email extraction
    email=$(echo "$text" | grep -oE '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}')
    echo "Email found: $email"
    
    # Phone number extraction
    phone=$(echo "$text" | grep -oE '[0-9]{3}-[0-9]{3}-[0-9]{4}')
    echo "Phone found: $phone"
    
    # Using sed for replacement
    modified=$(echo "$text" | sed 's/@[a-zA-Z0-9.-]*\.com/@company.com/g')
    echo "Modified: $modified"
}

# ============================================================================
# 🎯 PRACTICAL CODING CHALLENGES
# ============================================================================

# Q21: Write a script to monitor system resources
system_monitor() {
    echo "=== SYSTEM RESOURCE MONITOR ==="
    
    # CPU usage
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
    echo "CPU Usage: ${cpu_usage}%"
    
    # Memory usage
    memory_info=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2}')
    echo "Memory Usage: $memory_info"
    
    # Disk usage
    disk_usage=$(df -h / | awk 'NR==2{print $5}')
    echo "Disk Usage: $disk_usage"
    
    # Load average
    load_avg=$(uptime | awk -F'load average:' '{print $2}')
    echo "Load Average:$load_avg"
}

# Q22: Create a backup script with rotation
backup_script() {
    echo "=== BACKUP SCRIPT TEMPLATE ==="
    
    SOURCE="/path/to/source"
    BACKUP_DIR="/path/to/backup"
    DATE=$(date +%Y%m%d_%H%M%S)
    BACKUP_NAME="backup_$DATE.tar.gz"
    RETENTION_DAYS=7
    
    echo "Creating backup: $BACKUP_NAME"
    # tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE"
    
    echo "Removing backups older than $RETENTION_DAYS days"
    # find "$BACKUP_DIR" -name "backup_*.tar.gz" -mtime +$RETENTION_DAYS -delete
    
    echo "Backup completed successfully"
}

# Q23: Parse log files and generate reports
log_parser() {
    echo "=== LOG PARSING SCRIPT ==="
    
    local logfile="${1:-/var/log/syslog}"
    
    if [ ! -f "$logfile" ]; then
        echo "Log file not found: $logfile"
        return 1
    fi
    
    echo "Analyzing log file: $logfile"
    echo "=========================="
    
    # Count total lines
    total_lines=$(wc -l < "$logfile")
    echo "Total log entries: $total_lines"
    
    # Count error entries
    error_count=$(grep -ci "error\|fail\|critical" "$logfile" 2>/dev/null || echo "0")
    echo "Error entries: $error_count"
    
    # Top 10 IP addresses
    echo ""
    echo "Top 10 IP addresses:"
    grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b' "$logfile" 2>/dev/null | \
        sort | uniq -c | sort -nr | head -10
}

# ============================================================================
# 🚀 MAIN EXECUTION SECTION
# ============================================================================

main() {
    echo "🎯 Shell Scripting Interview Questions & Answers"
    echo "================================================="
    echo ""
    echo "This file contains comprehensive Q&A for shell scripting interviews."
    echo "Each function demonstrates practical solutions to common questions."
    echo ""
    echo "Available functions:"
    echo "- Basic questions (Q1-Q11)"
    echo "- Advanced concepts (Q12-Q20)" 
    echo "- Practical challenges (Q21-Q23)"
    echo ""
    echo "Usage: source this file and call individual functions"
    echo "Example: numbers_divisible_not_15"
}

# Execute main function if script is run directly
if [ "${BASH_SOURCE[0]}" == "${0}" ]; then
    main "$@"
fi