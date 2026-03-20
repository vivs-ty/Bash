# 📘 Bash Scripting Guide for Cloud Engineers

Bash scripting is a great skill, especially for automating tasks and managing systems efficiently.

## 📌 Overview

This guide is structured in three phases:

1. **Phase 1 – Beginner**: Bash basics and scripting fundamentals.
2. **Phase 2 – Intermediate**: File handling, log parsing, and automation.
3. **Phase 3 – Advanced**: Cloud automation, CLI integration, networking, and debugging.

## 🧭 Repository Navigation

- **Phase 1 details:** `Phase1/Readme.md` and `Phase1/Beginner.md`
- **Phase 2 details:** `Phase2/Readme.md` and `Phase2/Intermediate.md`
- **Phase 3 details:** `Phase3/Readme.md` and `Phase3/Advanced.md`
- **Task list:** `Tasks/Readme.md`

## 📈 Current Implementation Status

- The full curriculum lists 200 tasks in `Tasks/Readme.md`.
- The currently implemented scripts are in `Tasks/Basic-Level/` (tasks 1 to 60).

---

## 🚀 Phase 1: Beginner Level

### 📂 Phase 1 Topics

- **What is Bash?**
- **Basic Shell Commands**
  - `ls`, `cd`, `mkdir`, `cp`, `mv`, `rm`, `touch`
- **Variables & User Input**
- **Conditionals**
  - `if`, `else`, `elif`, test expressions
- **Loops**
  - `for`, `while`, `until`
- **Functions**
- **Script Execution & Permissions**
  - `chmod +x`, `#!/bin/bash`

### 🛠 Sample Script: Hello User

```bash
#!/bin/bash

# Check if running interactively
if [ -t 0 ]; then
    echo "Enter your name:"
    read name
    echo "Hello, $name! Welcome to Bash scripting."
else
    echo "Hello! Welcome to Bash scripting."
fi
```

---

### 🧪 Mini Project: Server Health Check Script

```bash
#!/bin/bash

echo "=== Server Health Check ==="
echo
echo "CPU Load:"
uptime

echo
echo "Disk Usage:"
df -h

echo
echo "Memory Usage:"
free -m
```

---

## ⚙️ Phase 2: Intermediate Level

### 📂 Phase 2 Topics

- **File and Directory Operations**
- **Parsing Logs (e.g., Apache, Nginx)**
- **Working with `awk`, `sed`, `grep`**
- **Process Management with `ps`, `kill`, `top`**
- **Using `cron` for Scheduling**
- **Environment Variables and Profiles**

### 🛠 Sample Script: Parse Error Logs

```bash
#!/bin/bash

# Set error log file path
LOG_FILE="/var/log/nginx/error.log"

# Check if log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file not found at $LOG_FILE"
    exit 1
fi

# Parse error logs and create summary
grep "error" "$LOG_FILE" | \
    awk '{print $1, $2, $3, $NF}' > error_summary.txt

echo "Error summary created in error_summary.txt"
```

### 🧪 Mini Project: User Audit Script

```bash
#!/bin/bash

# Set output formatting
SEPARATOR="----------------------------------------"

echo "=== System User Audit ==="
echo "$SEPARATOR"

echo "All system users:"
cut -d: -f1,3 /etc/passwd | sort

echo -e "\n$SEPARATOR"

echo "Currently logged in users:"
who

echo -e "\n$SEPARATOR"

echo "Top 5 processes by memory usage:"
ps aux --sort=-%mem | head -n 6
```

---

## 🧠 Phase 3: Advanced Level

### 📂 Phase 3 Topics

- **Cloud CLI Integration (AWS CLI, Azure CLI, gcloud)**
- **Automating Infrastructure (e.g., Terraform with Bash)**
- **Networking Tools (ping, curl, netstat)**
- **APIs with `curl` and `jq`**
- **Error Handling and Debugging (`set -x`, `trap`)**
- **Creating Reusable Bash Libraries**
- **Secure Credential Management**

### 🛠 Sample Script: S3 Bucket Backup (AWS CLI)

```bash
#!/bin/bash

# Configuration
BUCKET_NAME="my-backup-bucket"
SOURCE_DIR="/home/ubuntu/data"
DATE=$(date +%Y-%m-%d)

# Error handling
set -e
trap 'echo "Error: Backup failed on line $LINENO"' ERR

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory not found"
    exit 1
fi

# Check AWS CLI installation
if ! command -v aws &> /dev/null; then
    echo "Error: AWS CLI is not installed"
    exit 1
fi

# Perform backup
echo "Starting backup to S3..."
aws s3 sync "$SOURCE_DIR" "s3://$BUCKET_NAME/$DATE" --delete

echo "Backup to S3 complete: $(date)"
```

---

### 🧪 Mini Project: EC2 Instance Monitoring

```bash
#!/bin/bash

# Error handling
set -e
trap 'echo "Error on line $LINENO"' ERR

# Check AWS CLI installation
if ! command -v aws &> /dev/null; then
    echo "Error: AWS CLI is not installed"
    exit 1
fi

echo "=== EC2 Instance Monitor ==="
echo "Timestamp: $(date)"
echo

# Get instance information
aws ec2 describe-instances \
    --query "Reservations[*].Instances[*].[InstanceId,State.Name,PublicIpAddress,Tags[?Key=='Name'].Value|[0]]" \
    --output table

echo -e "\nMonitoring complete"
```

---

## 📚 Learning Resources

- **Book**: *"Linux Command Line and Shell Scripting Bible"*
- **Platform**: Codecademy, LinuxCommand.org, Udemy
- **Docs**: [GNU Bash Manual](https://www.gnu.org/software/bash/manual/)

---

## 📁 Folder Structure in This Repository

```bash
Bash/
├── Phase1/
│   ├── Readme.md
│   └── Beginner.md
├── Phase2/
│   ├── Readme.md
│   └── Intermediate.md
├── Phase3/
│   ├── Readme.md
│   └── Advanced.md
└── Tasks/
  ├── Readme.md
  └── Basic-Level/
```

---
