#!/bin/bash
echo "===== $(date) =====" >> /var/log/system_monitor/metrics.log
df -h >> /var/log/system_monitor/metrics.log
ps aux --sort=-%cpu | head -5 >> /var/log/system_monitor/metrics.log
echo "" >> /var/log/system_monitor/metrics.log
