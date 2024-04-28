# Source the bashrc
[[ -f ~/.bashrc ]] && source ~/.bashrc

# Print a welcome message
clear
toilet "welcome home" -f mono12

# Start graphical environment after login on tty1
[[ -z $DISPLAY ]] && \
[[ $XDG_VTNR -eq 1 ]] && \
[[ $(tty) == /dev/tty1 ]] && \
echo -e "Starting graphical session" && \
exec Hyprland
