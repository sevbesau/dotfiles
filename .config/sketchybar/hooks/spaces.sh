#!/bin/sh

source "$CONFIG_DIR/colors.sh" 

# Default space settings
ICON_COLOR="$TEXT_COLOR"
BACKGROUND_DRAWING="off"
BACKGROUND_COLOR="$BAR_COLOR"

# Selected space settings
if [ $SELECTED = true ]; then
  ICON_COLOR="$ITEM_BG_COLOR"
  BACKGROUND_COLOR="$TEXT_COLOR"
  BACKGROUND_DRAWING="on"
fi

settings=(
  background.drawing="$BACKGROUND_DRAWING"
  background.color="$BACKGROUND_COLOR"
  icon.color="$ICON_COLOR"
)

sketchybar --set $NAME "${settings[@]}"
