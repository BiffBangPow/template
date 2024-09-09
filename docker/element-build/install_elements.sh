#!/bin/bash

# Check if the file is provided as a command line argument
if [ -z "$1" ]; then
    echo "Usage: $0 <package_list_file>"
    exit 1
fi

# Read the package names from the file and iterate over them
while IFS= read -r package; do
    # Run the 'composer require' command for each package
    composer require "$package"
done < "$1"
