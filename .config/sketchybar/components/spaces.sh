#!/bin/sh

NUMBER_OF_DISPLAYS=$(yabai -m query --displays | jq length)

case $NUMBER_OF_DISPLAYS in
  2) SPACE_ICONS=(":firefox:" ":slack:" ":default:" ":code:" ":terminal:" ":default:" ":default:" ":default:" ":default:") ;;
  *) SPACE_ICONS=(":code:" ":firefox:" ":terminal:" ":slack:" ":default:" ":default:" ":default:" ":default:" ":default:") ;;
esac

for i in "${!foo[@]}"; do 
  printf "%s\t%s\n" "$i" "${foo[$i]}"
done


for i in "${!SPACE_ICONS[@]}"
do
  sid="$(($i+1))"
  space=(
    space="$sid"
    icon="${SPACE_ICONS[i]}"
    icon.font="sketchybar-app-font:Regular:16.0" \
    icon.padding_left=6
    icon.padding_right=6
    label.drawing=off
    background.height=28
    script="$HOOKS/spaces.sh"
    click_script="yabai -m space --focus $sid"
  )
  sketchybar \
    --add space space."$sid" left \
    --set space."$sid" "${space[@]}"
done
