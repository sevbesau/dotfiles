#exec qtile
checkBat &
numlockx &
systemctl --user import-enviroment DISPLAY
xrdb 3 ~/.Xdefaults
exec i3

