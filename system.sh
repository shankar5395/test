#!/bin/bash

# Check the status of the SSH service
status=$(systemctl is-active ssh)

if [ "$status" != "active" ]; then
    echo "SSH service is not running. Restarting..."
    sudo systemctl restart ssh
else
    echo "SSH service is already running."
fi

# Show the status of the SSH service
echo "Current SSH service status:"
systemctl status ssh
