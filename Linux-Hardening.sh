#!/bin/bash

# Update system and install essential packages
apt-get update && apt-get upgrade -y
apt-get install -y ufw fail2ban lynis

# Secure SSH Access
echo "PermitRootLogin no" >> /etc/ssh/sshd_config
echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
systemctl restart sshd

# Set up UFW firewall
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw enable

# Disable unnecessary services
systemctl stop apache2
systemctl disable apache2

# Set system limits
echo "fs.file-max = 100000" >> /etc/sysctl.conf
sysctl -p

# Set strong password policy
echo "minlen = 12" >> /etc/login.defs
echo "maxrepeat = 3" >> /etc/login.defs
echo "difok = 3" >> /etc/login.defs

# Update user permissions
chmod 700 /home
chmod 750 /home/username

# Hardening sysctl settings
sysctl -w net.ipv4.icmp_echo_ignore_all=1

# Logging and Monitoring
echo "*.* @logserver.com" >> /etc/rsyslog.conf
systemctl restart rsyslog
