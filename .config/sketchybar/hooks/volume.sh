#!/bin/sh

[ "$SENDER" = "volume_change" ] || exit 0

VOLUME="$INFO"

# We want to slightly decrease the padding for the volume icon 
# when the volume is muted since the icon is bigger
ICON_PADDING=10

case "$VOLUME" in
  [6-9][0-9]|100) ICON="􀊧" ;;
  [3-5][0-9]) ICON="􀊥" ;;
  [1-9]|[1-2][0-9]) ICON="􀊡" ;;
  *) 
    ICON="􀊣" 
    ICON_PADDING=6
  ;;
esac

settings=(
  icon.padding_right="$ICON_PADDING"
  icon="$ICON"
)

sketchybar --set "$NAME" "${settings[@]}"
