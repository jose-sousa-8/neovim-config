#!/bin/bash

# Source directory (folder to copy from)
source_dir="$HOME/.config/nvim/"

# Destination directory (folder to copy to)
destination_dir="$HOME/personal/neovim-config/"

# Check if the source directory exists
if [ ! -d "$source_dir" ]; then
  echo "Source directory does not exist: $source_dir"
  exit 1
fi

# Check if the destination directory exists, create it if it doesn't
if [ ! -d "$destination_dir" ]; then
  mkdir -p "$destination_dir"
fi

# Copy all files from the source directory to the destination directory
cp -r "$source_dir"/* "$destination_dir"

echo "Files copied from '$source_dir' to '$destination_dir'."

# Commit changes to Git
git add .
git commit -m "Updated neovim config via script"

echo "Created a git commit, only need to push changes"

