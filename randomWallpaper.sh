#!/bin/bash

# Folder with wallpapers
WALLPAPER_DIR="$HOME/PATH/TO/YOUR/BACKGROUNDS/FOLDER"

# Save that random wallpaper to .last_wallpaper
LAST_WALLPAPER_FILE="$HOME/.config/i3/.last_wallpaper"

# Get a list of all wallpapers
wallpapers=("$WALLPAPER_DIR"/*)

# Check if .last_wallpaper exists, if so, read it
if [[ -f "$LAST_WALLPAPER_FILE" ]]; then
	last_wallpaper=$(<"$LAST_WALLPAPER_FILE")
else
	last_wallpaper=""
fi

# Build a new list, excluding the most recent background
filtered=()
for wp in "${wallpapers[@]}"; do
	[[ "$wp" != "$last_wallpaper" ]] && filtered+=("$wp")
done

# Pick a new random wallpaper from the filtered list
new_wallpaper="${filtered[RANDOM % ${#filtered[@]}]}"

# Set the new wallpaper
feh --bg-scale "$new_wallpaper"

# Save that in last_wallpaper
echo "$new_wallpaper" > "$LAST_WALLPAPER_FILE"
