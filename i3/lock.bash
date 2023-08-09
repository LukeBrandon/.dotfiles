#!/bin/sh -e

# sudo apt install scrot for this to work
# Take a screenshot
scrot -o /tmp/screen_locked2.png

# Delete existing image
[ -f screen_locked.png ] && rm -f /tmp/screen_locked2.png
[ -f screen_locked2.png ] && rm -f /tmp/screen_locked.png

# sudo apt install imagemagick for this to work
# Pixellate it 10x
convert /tmp/screen_locked2.png -scale 10% -scale 1000% /tmp/screen_locked.png
rm -f /tmp/screen_locked2.png

# Lock screen displaying this image.
i3lock -i /tmp/screen_locked.png

# Turn the screen off after a delay.
sleep 60; pgrep i3lock && xset dpms force off
