#!/bin/bash
set -e

echo "Stopping Apache..."
systemctl stop httpd || true
