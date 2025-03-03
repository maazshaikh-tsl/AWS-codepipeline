#!/bin/bash
set -e  # Exit on any error

# Update system packages
sudo dnf update -y

# Install Apache (httpd)
sudo dnf install -y httpd

# Enable and start Apache service
sudo systemctl enable --now httpd

# Ensure Apache runs on startup
sudo systemctl restart httpd

echo "Dependencies installed successfully!"
