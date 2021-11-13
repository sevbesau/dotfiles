loadkeys us-caps-escape
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrdb -load $XDG_CONFIG_HOME/X11/xresources
wallpaper
setxkbmap -option caps:escape
slock
exec i3
