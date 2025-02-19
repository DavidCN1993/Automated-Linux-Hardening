### Key Features:
- **Security Audits** using **Lynis**.
- **SSH Hardening** to disable root login and enforce secure authentication.
- **Fail2Ban** to protect against brute-force attacks.
- **Firewall Configuration** using **UFW** to block unnecessary connections.
- **Log Storage** in **AWS S3** for central monitoring and analysis.

## Prerequisites

Before running the script, ensure you have the following:
- A **Linux-based EC2 instance** running Ubuntu (or any other Linux distribution).
- **AWS CLI** configured with appropriate permissions (S3 access).
- **Root or sudo** privileges on the system.
- **Lynis**, **Fail2Ban**, and **UFW** installed.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/automated-linux-hardening.git
   cd automated-linux-hardening

2. **Make the script executable**:

bash
Copy code
chmod +x linux_hardening.sh

3. **Run the script**:

bash
Copy code
sudo ./linux_hardening.sh

Script Breakdown
4. **Update System**: 

Updates all installed packages and system dependencies.

5. **Run Lynis Security Audit**:

Performs a quick security audit and saves the results to /var/log/lynis_audit.log.

6. **Configure SSH Security**: 

Disables root login and password-based authentication for SSH.

7. **Set Up Fail2Ban**: 

Protects the system from brute-force attacks by banning malicious IP addresses.

8. **Configure UFW Firewall**: 

Blocks incoming connections except for SSH and necessary services.

9. **Upload Logs to AWS S3**: 

Uploads security audit logs and hardening logs to an S3 bucket for centralized monitoring.

AWS Integration
The script automatically uploads logs to your specified S3 bucket for central storage and analysis.

AWS Systems Manager or Lambda can be used for automation across multiple EC2 instances.

Usage
10. **Run the script periodically**:

Schedule it to run at regular intervals using cron or AWS Lambda.

11. **Monitor logs**: 

Check your S3 bucket for the latest security audit and hardening results.

Example Output
bash
Copy code
Starting Linux Hardening...
Updating system packages...
Running Lynis audit...
Configuring SSH security...
Configuring Fail2Ban...
Setting up UFW firewall rules...
Uploading logs to AWS S3...
Linux Hardening Completed!
