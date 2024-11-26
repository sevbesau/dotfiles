#!/bin/sh

settings=(
  script="$HOOKS/volume.sh"
  label.drawing=off
  click_script='osascript -e "set volume output muted not (output muted of (get volume settings))"'
)

sketchybar \
  --add item volume right \
  --set volume "${settings[@]}" \
  --subscribe volume volume_change
