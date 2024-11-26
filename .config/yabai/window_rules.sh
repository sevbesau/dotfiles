#!/bin/sh

# float windows
yabai -m rule --add app="^1Password 7$" manage=off
yabai -m rule --add app="^Adobe Illustrator 2024$" manage=off 
yabai -m rule --add app="^Adobe Creative Cloud$" manage=off
yabai -m rule --add app="^Finder$" manage=off
yabai -m rule --add app="^Disk Utility$" manage=off
yabai -m rule --add app="^Activity Monitor$" manage=off
yabai -m rule --add app="^Calendar$" manage=off
yabai -m rule --add app="^Calculator$" manage=off
yabai -m rule --add app="^Podcasts$" manage=off
yabai -m rule --add app="^System Information$" manage=off
yabai -m rule --add app="^System Preferences$" manage=off
yabai -m rule --add title="Preferences$" manage=off
yabai -m rule --add title="^Archive Utility$" manage=off
yabai -m rule --add title="Settings$" manage=off

# specific window rules
yabai -m rule --add app="^mpv$" manage=off grid=4:4:1:1:2:2
yabai -m rule --add app="^eqMac$" manage=off grid=4:4:1:1:2:2
