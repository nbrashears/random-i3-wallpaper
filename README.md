SETUP
- Add this file to your ~/.config/i3/ folder
- Add this to your config file in place of your original background command:
```bash
exec_always --no-startup-id ~/.config/i3/randomWallpaper.sh
bindsym $mod+Shift+b exec ~/.config/i3/randomWallpaper.sh
```
- Just make sure you change the directory in randomWallpaper.sh to your own background directory and set it as executable with:
```bash
sudo chmod +x ~/.config/i3/randomWallpaper.sh
```
- Now you'll have a random background on startup if all goes well. You can also use $mod+Shift+b to change your background on the fly
