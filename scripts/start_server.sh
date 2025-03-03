#!/bin/bash
set -e

echo "Starting Apache..."
systemctl start httpd
systemctl enable httpd
