#!/bin/bash
[ $UID -eq 0 ] || 
{ echo "This script needs to be run with sudo or by root."; exit 1; }

# Ensure the service name is provided
if [ -z "$1" ]; then
	echo "Service name is required"
	exit 1
fi

service_name=$1
log_dir="/var/log/service-start"
log_file="${log_dir}/${service_name}-start-date.log"

# Ensure the log directory exists
mkdir -p "$log_dir"

# Write the current date and time to the log file
date +'%Y-%m-%d %H:%M:%S' > "$log_file"

