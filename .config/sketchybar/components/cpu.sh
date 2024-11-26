#!/bin/sh

settings=(
  update_freq=2
  script="$HOOKS/cpu.sh"
  icon="􀫥"
)

sketchybar \
  --add item cpu right \
  --set cpu "${settings[@]}"
