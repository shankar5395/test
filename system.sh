#!/bin/bash

# Check the status of the SSH service
if systemctl is-active --quiet ssh; then
    echo "SSH service is running."
else
    echo "SSH service is not running. Restarting..."
    sudo systemctl restart ssh
    if systemctl is-active --quiet ssh; then
        echo "SSH service restarted successfully."
    else
        echo "Failed to restart SSH service."
    fi
fi
