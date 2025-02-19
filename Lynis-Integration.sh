#!/bin/bash

# Install Lynis
if ! command -v lynis &> /dev/null
then
    echo "Lynis not found, installing..."
    apt-get install -y lynis
fi

# Run Lynis Audit
echo "Running Lynis security audit..."
lynis audit system

# Save Lynis Report
lynis --report-file /var/log/lynis-report.html audit system

# Print results
echo "Lynis audit completed. Check the report at /var/log/lynis-report.html."
