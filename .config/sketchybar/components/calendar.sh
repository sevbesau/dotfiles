#!/bin/sh

settings=(
  icon.drawing=off
  update_freq=30
  script="$HOOKS/calendar.sh"
)

sketchybar \
  --add item calendar right \
  --set calendar "${settings[@]}"
