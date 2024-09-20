#!/bin/bash

# Restart SSH service
sudo systemctl restart sshd

# Check the status of the SSH service
if systemctl status sshd | grep "active (running)"; then
    echo "SSH service restarted successfully."
else
    echo "Failed to restart SSH service."
fi
