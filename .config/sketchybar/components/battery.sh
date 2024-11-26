#!/bin/sh

settings=(
  update_freq=120
  script="$HOOKS/battery.sh"
)

sketchybar \
  --add item battery right \
  --set battery ${settings[@]} \
  --subscribe battery system_woke power_source_change
