#!/bin/sh

settings=(
  icon.color="$TEXT_COLOR"
  icon.font="sketchybar-app-font:Regular:16.0"
  label.color="$TEXT_COLOR"
  script="$HOOKS/front_app.sh"
)

sketchybar \
  --add item front_app left \
  --set front_app "${settings[@]}" \
  --subscribe front_app front_app_switched