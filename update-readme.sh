#!/bin/bash

# Navigate to the repository folder
cd /opt/checker-daily || exit

# Get the current date in the format YYYY-MM-DD
date=$(date +"%Y-%m-%d")

# Append the date to README.md
echo "$date" >> README.md

# Git commands to add, commit, and push the changes
git add README.md
git commit -m "Daily update: $date"
git push origin main