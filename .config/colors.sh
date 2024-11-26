#!/bin/sh

export BACKGROUND=$(grep '^background ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
export FOREGROUND=$(grep '^foreground ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)

# black
export COLOR0=$(grep 'color0 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
export COLOR8=$(grep 'color8 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
# red
export COLOR1=$(grep 'color1 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
export COLOR9=$(grep 'color9 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
# green
export COLOR2=$(grep 'color2 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
export COLOR10=$(grep 'color10 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
# yellow
export COLOR3=$(grep 'color3 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
export COLOR11=$(grep 'color11 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
# blue
export COLOR4=$(grep 'color4 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
export COLOR12=$(grep 'color12 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
# magenta
export COLOR5=$(grep 'color5 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
export COLOR13=$(grep 'color13 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
# cyan
export COLOR6=$(grep 'color6 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
export COLOR14=$(grep 'color14 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
# white
export COLOR7=$(grep 'color7 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
export COLOR15=$(grep 'color15 ' kitty/current-theme.conf | tr -s ' ' | cut -d' ' -f 2)
