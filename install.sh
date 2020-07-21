#! /bin/bash

FILE=~/.config/polybar/config

# Check if the file already exists
if [ -f "$FILE" ]; then
	mv ~/.config/polybar/config ~/.config/polybar/config.bak	
fi

# Copy the file to the polybar directory
mkdir -p ~/.config/polybar/ && cp ./polybar/config ~/.config/polybar/

# Go out of directory
cd ..

# Remove the repository
rm -rf clean-polybar
