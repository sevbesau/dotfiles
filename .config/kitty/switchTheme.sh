#!/bin/sh
if defaults read -g AppleInterfaceStyle &>/dev/null; then
	THEME="Monokai"
else
	THEME="Adwaita light"
fi

SOCKET=$(find /tmp/ -name "kitty-socket*")

/Applications/kitty.app/Contents/MacOS/kitten theme "$THEME"
/Applications/kitty.app/Contents/MacOS/kitty @ --to unix:"$SOCKET" set-colors --all --configured "~/.config/kitty/current-theme.conf"
