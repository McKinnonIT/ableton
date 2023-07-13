#!/bin/bash

user="$USER"
folder="/Users/$user/Library/Application Support/Ableton/Live 11.3.4/Unlock"
file_url="https://raw.githubusercontent.com/McKinnonIT/ableton/main/Unlock.cfg"
file_name="unlock.cfg"

# Check if the folder exists
if [ ! -d "$folder" ]; then
  echo "Creating folder: $folder"
  mkdir -p "$folder"
fi

# Download the file and place it in the folder
echo "Downloading file: $file_name"
curl -o "$folder/$file_name" "$file_url"

echo "File downloaded and placed in: $folder"
