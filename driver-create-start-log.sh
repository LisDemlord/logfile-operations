#!/bin/bash

# Check if the script is run as root
[ $UID -eq 0 ] || 
{ 
    echo "This script needs to be run with sudo or by root."; 
    exit 1; 
}

# Ensure the service name is provided as an argument
if [ -z "$1" ]; then
    echo "Service name is required"
    exit 1
fi

# Assign the first argument (service name) to a variable
service_name=$1

# Define the directory where logs will be stored
log_dir="/var/log/service-start"

# Define the log file path based on the service name
log_file="${log_dir}/${service_name}-start-date.log"

# Ensure the log directory exists; create it if it doesn't
mkdir -p "$log_dir"

# Write the current date and time to the log file
date +'%Y-%m-%d %H:%M:%S' > "$log_file"

