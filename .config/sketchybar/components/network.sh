#!/bin/sh

settings=(
  update_freq=30
  # script="$HOOKS/network.sh"
  icon="􀙇"
  label.drawing=off
)

sketchybar \
  --add item network right \
  --set network "${settings[@]}"
