#!/bin/sh

source "/Users/sevbesau/.config/colors.sh"

function rgb2argb() {
  hex=$(echo $1 | tr -d '#' | tr '[a-z]' '[A-Z]')
  alpha=$(echo $2 | tr '[a-z]' '[A-Z]')
  echo "0x$alpha$hex"
}

export TEXT_COLOR=$(rgb2argb "#f8f8f2" "ff")
# export TEXT_COLOR="$(rgb2argb $FOREGROUND 'ff')"
echo "'"$TEXT_COLOR"'"

export BAR_COLOR=0x00001f30
export ITEM_BG_COLOR=0xff003547
export ACCENT_COLOR=0xff2cf9ed


# export TEXT_COLOR=0xffffffff
# 
# export BAR_COLOR=0x00001f30
# export ITEM_BG_COLOR=0xff003547
# export ACCENT_COLOR=0xff2cf9ed
# 