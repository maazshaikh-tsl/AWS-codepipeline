#!/bin/bash
set -e

# Restart Apache to apply new changes
systemctl restart httpd

# Enable Apache to start on boot
systemctl enable httpd

# Verify Apache is running
if systemctl is-active --quiet httpd; then
    echo "Apache is running."
else
    echo "Error: Apache failed to start!"
    exit 1
fi
