#!/bin/bash
# Function to read and display log information
display_log_info() {
	local service_name=$1
	local log_dir="/var/log/service-start/"
	local log_file="${log_dir}/${service_name}-start-date.log"
	
	if [ -f "$log_file"  ]; then
		local log_date=$(cat "$log_file")
		echo "Service: $service_name, Start Date: $log_date"
	else
		echo "Log file for service $service_name not found."
	fi
}

# Get the names of the services from the user
read -p "Enter the first service name: " service1
read -p "Enter the second service name: " service2

# Display the log information for both services
display_log_info "$service1" "$log_dir"
display_log_info "$service2" "$log_dir"

