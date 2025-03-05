#!/bin/bash
set -e

# Log output for debugging
exec > /var/log/before_install.log 2>&1

echo "Stopping Apache..."
systemctl stop httpd || true

echo "Removing old application files..."
rm -rf /var/www/html/*

echo "BeforeInstall script execution completed."
