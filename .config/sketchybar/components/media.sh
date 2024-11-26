#!/bin/sh

settings=(
  label.max_chars=35
  icon.padding_left=0
  background.drawing=off
  scroll_texts=on
  icon="􀑪"
  script="$HOOKS/media.sh"
)

sketchybar --add item media e \
           --set media "${settings[@]}" \
           --subscribe media media_change