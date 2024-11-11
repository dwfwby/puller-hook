#!/bin/bash

# Directory where the Git repository is located
repo_dir="$1"

# Change to the Git repository directory
cd "$repo_dir" || { echo "Failed to enter directory: $repo_dir"; exit 1; }

git fetch $2
CHANGED=$(git diff FETCH_HEAD)

if [ -n "$CHANGED" ]; then
    git pull "$2"
    if [ $? -eq 0 ]; then
        npm i &
        reboot now
    fi
fi
