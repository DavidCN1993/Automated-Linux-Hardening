#!/bin/bash

# Install Fail2Ban
if ! command -v fail2ban-client &> /dev/null
then
    echo "Fail2Ban not found, installing..."
    apt-get install -y fail2ban
fi

# Configure Fail2Ban for SSH protection
cat <<EOL > /etc/fail2ban/jail.local
[DEFAULT]
bantime = 600
findtime = 600
maxretry = 3

[sshd]
enabled = true
port = ssh
filter = sshd
logpath = /var/log/auth.log
EOL

# Start and enable Fail2Ban
systemctl start fail2ban
systemctl enable fail2ban

# Print status
echo "Fail2Ban setup completed. SSH is now protected."
