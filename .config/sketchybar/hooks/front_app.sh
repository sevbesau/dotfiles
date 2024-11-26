#!/bin/sh

[ "$SENDER" = "front_app_switched" ] || exit 0;

settings=(
  label="$INFO" 
  icon="$($CONFIG_DIR/hooks/icon_map_fn.sh "$INFO")"
)

sketchybar --set $NAME "${settings[@]}"
