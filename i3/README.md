# i3
Repository for i3 folder inside of the `~/.config` directory

### Scaling
To change the scale and thus the size of the i3 status bar, run `xrandr --dip 110` and then reboot i3 `mod+shift+r`
Adjust the value to one that works for you

### Dependencies
- `dunst` - used for notifications
- `imagemagick` - used for the lock screen
- `i3lock` - for locking i3
- `playerctl` - used for media control keys???
- `scrot` -  used for the lock screen
- `flameshot` -  used for easy screenshots (`printscreen` button)
- `feh` - used for setting the background
- `rofi` - replaces dmenu
- `compton` - compositor that lets you do opacity and transitions between windows
- `lxappearance` - used for making i3 look nicer
- `arc-theme`- A GTK theme, set this in lxappearance
- `fonts-font-awesome` - Get webfonts from [Github](https://github.com/FortAwesome/Font-Awesome/releases), unzip and copy `regular.ttf` to `~/.fonts`
  - You can then copy any icon from the `font awesome cheatsheet` and use it on the system
  - `sudo apt install fonts-font-awesome` is the quickest it seems
- `brightnessctl` - used for Media keys
  - ~To configure this, need to chmod 777 the intel_backlight file~
  - ~ `sudo gpasswd -a <user_name> video` ~

- `i3blocks` - for the i3 status bar

To install all dependencies, run `sudo apt install dunst imagemagick i3lock playerctl scrot feh rofi compton lxappearance arc-theme fonts-font-awesome brightness-ctl i3blocks`

### I3 Blocks dependencies
- `lm-sensors` - used for CPU temp in i3 blocks
- `pavucontrol` - used for audio status in i3 blocks

