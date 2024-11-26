#!/bin/sh

settings=(
  icon="􀆊"
  icon.color="$TEXT_COLOR"
  icon.padding_left=16
  icon.padding_right=16
  label.drawing=off
  background.drawing=off
)

sketchybar \
  --add item space_separator left \
  --set space_separator "${settings[@]}" 
