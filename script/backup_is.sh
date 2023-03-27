#!/bin/bash

# This script creates a backup of the webMethods Integration Server files.

# Set the backup directory.

# This will backup the IS for webmethod version 10.11

backup_dir="/apps/webmethods/wm_1011"

# Create the backup directory if it does not exist.
if [ ! -d "$backup_dir" ]; then
  mkdir -p "$backup_dir"
fi

# Set the backup file name.
backup_file="$backup_dir/is_backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Backup the Integration Server files.
tar -czf "$backup_file" -C /opt/softwareag/IntegrationServer .

# Verify the backup was successful.
if [ $? -eq 0 ]; then
  echo "Backup created successfully: $backup_file"
else
  echo "Backup failed."
fi