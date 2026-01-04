
# Testing-Linux-and-Servers_Herovired

```md
# DevOps Assignment – System Monitoring, User Management & Backup Automation
---

## Environment Details
- Operating System: Windows Subsystem for Linux (WSL)
- Linux Distribution: Ubuntu 22.04
- Tools Used:
  - htop
  - cron
  - tar / gzip
  - git
  - Apache2
  - Nginx

---

## 📂 Project Structure
```

Testing-Linux-Servers_Herovired/
├── monitoring/
│   └── system_monitor.sh
├── backups/
│   ├── apache_backup.sh
│   ├── nginx_backup.sh
│   ├── apache_verify.log
│   └── nginx_verify.log
├── user-management/
├── user_setup.txt
└── REDME.md

```

---

## Task 1: System Monitoring Setup

### Objective
To monitor system health and performance, including CPU, memory, disk usage, and running processes.

### Implementation
- Installed `htop` for real-time CPU and memory monitoring.
- Used `df` and `du` for disk usage tracking.
- Identified high resource-consuming processes using `ps`.
- Created a monitoring script to log system metrics every 30 minutes.

### Script Location
```

monitoring/system_monitor.sh

```

### Log Location
```

/var/log/system_monitor/metrics.log

```

---

## Task 2: User Management and Access Control

### Objective
To create secure user accounts with isolated workspaces and enforce password policies.

### Users Created
- sarah
- mike

### Workspace Directories
- `/home/sarah/workspace`
- `/home/mike/workspace`

### Security Measures
- Ownership assigned to respective users.
- Permissions set to `700` for isolation.
- Password expiration enforced every 30 days.
- Password complexity enabled via `pwquality.conf`.

---

## Task 3: Automated Backup Configuration

### Objective
To automate weekly backups for Apache and Nginx servers and verify backup integrity.

### Apache Backup (Sarah)
- Configuration: `/etc/apache2`
- Document Root: `/var/www/html`
- Script: `backups/apache_backup.sh`

### Nginx Backup (Mike)
- Configuration: `/etc/nginx`
- Document Root: `/var/www/html`
- Script: `backups/nginx_backup.sh`

### Backup Details
- Backup Location: `/backups`
- File Format: `.tar.gz`
- Naming Convention:
  - `apache_backup_YYYY-MM-DD.tar.gz`
  - `nginx_backup_YYYY-MM-DD.tar.gz`

### Verification Logs
- `apache_verify.log`
- `nginx_verify.log`

---

## Cron Job Scheduling

Cron jobs are configured as follows:

- System monitoring: Every 30 minutes
- Apache backup: Every Tuesday at 12:00 AM
- Nginx backup: Every Tuesday at 12:00 AM

All cron configurations are documented in:
```

cron.txt

```

---

## Backup Verification
Backup integrity is verified after each run by listing the contents of the compressed archive using `tar -tzf`.  
Verification outputs are saved in log files inside the `backups/` directory.

---

The `screenshots/` directory contains terminal screenshots demonstrating:
- htop monitoring
- Disk usage checks
- User and permission verification
- Cron job configuration
- Backup creation and verification
- GitHub push confirmation

---


---


