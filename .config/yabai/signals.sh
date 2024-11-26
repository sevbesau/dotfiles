#!/bin/sh

yabai -m signal --remove display_removed
yabai -m signal --add \
  label=display_removed \
  event=display_removed \
  action="sleep 1; ~/.config/yabai/workspaces.sh; sketchybar --reload" 

yabai -m signal --remove display_added
yabai -m signal --add \
  label=display_added \
  event=display_added \
  action="sleep 1; ~/.config/yabai/workspaces.sh; sketchybar --reload" 

yabai -m signal --remove reload_sketchybar
yabai -m signal --add \
  label=reload_sketchybar \
  event=system_woke \
  action="sleep 1; sketchybar --reload"

