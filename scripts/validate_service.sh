#!/bin/bash
echo "Validating Nginx service..."
systemctl status nginx | grep "active (running)"
