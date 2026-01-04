# DevOps Environment Setup & Management Assignment

##  Overview
This repository contains the implementation for setting up and managing a **secure, monitored, and well-maintained development environment** as part of a DevOps assignment.

The objective of this project in:

- Monitoring system performance
- Managing user access securely
- Automating and verifying backups for web servers

The environment is configured for two developers:

- **Sarah** – Apache Web Server  
- **Mike** – Nginx Web Server  

---

## 🛠️ Tasks Implemented

---

## Task 1: System Monitoring Setup

Configured system monitoring tools to ensure visibility into **system health, performance, and capacity planning**.

### Tools & Commands Used
- `htop` / `nmon` – CPU, memory, and process monitoring
- `df -h` – Disk usage monitoring
- `du -sh` – Directory-level storage analysis
- `ps` – Identifying resource-intensive processes

### Logging
System metrics are logged for later review at:
<img width="1146" height="160" alt="gemotery_calculator" src="https://github.com/user-attachments/assets/5f959ae4-d9c6-4aee-811c-3cffad90b02f" />

```bash
/var/log/system_monitoring/metrics.log
````



* htop dashboard
* Disk usage output
* Monitoring log file

---

## Task 2: User Management and Access Control

Created secure user accounts with **isolated workspaces** and enforced **password security policies**.

### Users Created

* `sarah`
* `mike`

### Workspace Directories

* **Sarah:** `/home/sarah/workspace`
* **Mike:** `/home/mike/workspace`

### Security Controls Implemented

* Directory permissions set to `700`
* Ownership restricted to respective users
* Password expiration enforced every **30 days**
* Password expiry warning enabled

📸 Screenshots included showing:

* User creation
* Directory permissions
* Password policy configuration

---

##  Task 3: Backup Configuration for Web Servers

Automated backups were configured for Apache and Nginx servers with **scheduled cron jobs** and **backup integrity verification**.

---

### Apache Backup (Sarah)

* **Configuration Directory:** `/etc/httpd/`
* **Document Root:** `/var/www/html/`
* **Backup Script:** `apache_backup.sh`

---

### Nginx Backup (Mike)

* **Configuration Directory:** `/etc/nginx/`
* **Document Root:** `/usr/share/nginx/html/`
* **Backup Script:** `nginx_backup.sh`

---

### Backup Schedule

* **Every Tuesday at 12:00 AM**
* Managed using `cron`

### Backup Location

```bash
/backups/
```

Backups are stored as compressed `.tar.gz` files with date-based naming.

---

## Cron Job Configuration

The following cron jobs are configured using root crontab:

```bash
$ sudo crontab -l

0 0 * * 2 /usr/local/bin/apache_backup.sh
0 0 * * 2 /usr/local/bin/nginx_backup.sh
```

📸 Screenshots included showing:

* Cron configuration
* Backup execution
* Verification logs

---

## Project Structure

```text
devops-assignment/
├── monitoring/
│   └── system_monitor.sh
├── backups/
│   ├── apache_backup.sh
│   ├── nginx_backup.sh
│   ├── apache_verify.log
│   └── nginx_verify.log
├── screenshots/
├── cron.txt
└── README.md
```

---

