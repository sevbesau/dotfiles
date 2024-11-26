#!/bin/sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

[ "$PERCENTAGE" = "" ] && exit 0

# Set the icon based on the percentage
case "${PERCENTAGE}" in
  9[0-9]|100) ICON="􀛨" ;;
  [6-8][0-9]) ICON="􀺸" ;;
  [3-5][0-9]) ICON="􀺶" ;;
  [1-2][0-9]) ICON="􀛩" ;;
  *) ICON="􀛪"
esac
[[ "$CHARGING" != "" ]] && ICON="􀢋"

# Dont draw the label if the battery is full
LABEL_DRAWING="on"
ICON_PADDING=4
if [ "$PERCENTAGE" = "100" ]; then
  LABEL_DRAWING="off"
  ICON_PADDING=8
fi

settings=(
  icon="$ICON"
  label="${PERCENTAGE}%"
  label.drawing="$LABEL_DRAWING"
  icon.padding_right="$ICON_PADDING"
)

sketchybar --set "$NAME" "${settings[@]}"
