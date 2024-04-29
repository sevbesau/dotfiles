# xdg folder paths
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_DOCUMENTS_DIR="$HOME/documents"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_PICTURES_DIR="$HOME/images"
export XDG_VIDEOS_DIR="$HOME/videos"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Print a welcome message
clear
toilet "welcome home" -f mono12

# Start graphical environment after login on tty1
[[ -z $DISPLAY ]] && \
[[ $XDG_VTNR -eq 1 ]] && \
[[ $(tty) == /dev/tty1 ]] && \
echo -e "Starting graphical session" && \
exec Hyprland
