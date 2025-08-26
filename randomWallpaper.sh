#!/bin/bash

# Folder with wallpapers
WALLPAPER_DIR="$HOME/Desktop/Images/Backgrounds"

# Pick a random image from the folder
RANDOM_WP=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set it as the background
feh --bg-fill "$RANDOM_WP"
