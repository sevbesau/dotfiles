#!/bin/sh

# workspace create helper
function setup_space {
  local idx="$1"
  local name="$2"
  local space=
  echo "setup space $idx : $name"

  space=$(yabai -m query --spaces --space "$idx")
  if [ -z "$space" ]; then
    yabai -m space --create
  fi

  yabai -m space "$idx" --label "$name"
}

MAX_WORKSPACES=5

# get rid of extra workspaces
for idx in $(yabai -m query --spaces | jq ".[].index | select(. > $MAX_WORKSPACES)" | sort -nr); do
  yabai -m space --destroy "$idx"
done

# setup workspaces depending on how many displays we have
NUMBER_OF_DISPLAYS=$(yabai -m query --displays | jq length)

case $NUMBER_OF_DISPLAYS in
  2) 
    SPACE_CODE=4
    SPACE_WEB=1
    SPACE_CONSOLE=5
    SPACE_CHAT=2
    SPACE_OTHER=3

    yabai -m space 4 --display 2
    ;;
  *) 
    SPACE_CODE=1
    SPACE_WEB=2
    SPACE_CONSOLE=3
    SPACE_CHAT=4
    SPACE_OTHER=5
    ;;
esac

# create the workspacesrc skhd config file
WORKSPACES_KEYBINDS=$(
    cat ~/.config/skhd/workspacesrc-template | \
      sed "s/{SPACE_CODE}/$SPACE_CODE/g" | \
      sed "s/{SPACE_WEB}/$SPACE_WEB/g" | \
      sed "s/{SPACE_CONSOLE}/$SPACE_CONSOLE/g" | \
      sed "s/{SPACE_CHAT}/$SPACE_CHAT/g" | \
      sed "s/{SPACE_OTHER}/$SPACE_OTHER/g" \
)
echo "$WORKSPACES_KEYBINDS" > ~/.config/skhd/workspacesrc

# create new workspaces
setup_space 1 code
setup_space 2 web
setup_space 3 console
setup_space 4 slack
setup_space 5 media

# move applications to workspaces on launch
yabai -m rule --add app="^Code$"    space=$SPACE_CODE
yabai -m rule --add app="^Safari$"  space=$SPACE_WEB
yabai -m rule --add app="^FireFox$" space=$SPACE_WEB
yabai -m rule --add app="^kitty$"   space=$SPACE_CONSOLE 
yabai -m rule --add app="^Slack$"   space=$SPACE_CHAT

# move applications to workspaces on reload
function move_windows_to_workspace_by_id {
  [ -z "$1" ] && return;
  while IFS= read -r ID; do
    yabai -m window $ID --space $2
  done <<< "$1"
}

FIREFOX_IDS=$(yabai -m query --windows | jq -r '.[] | select(.app | test("Firefox"; "i")) | select(.title | test("^Developer Tools"; "i") | not) | .id')
FIREFOX_DEVTOOLS_IDS=$(yabai -m query --windows | jq -r '.[] | select(.app | test("Firefox"; "i")) | select(.title | test("^Developer Tools"; "i")) | .id')
TERMINAL_IDS=$(yabai -m query --windows | jq -r '.[] | select(.app | test("Kitty"; "i")) | .id')
CODE_IDS=$(yabai -m query --windows | jq -r '.[] | select(.app | test("Code"; "i")) | .id')
CHAT_IDS=$(yabai -m query --windows | jq -r '.[] | select(.app | test("slack|whatsapp|messenger|discord"; "i")) | .id')
MPV_IDS=$(yabai -m query --windows | jq -r '.[] | select(.app | test("Mpv"; "i")) | .id')

move_windows_to_workspace_by_id "$CODE_IDS" $SPACE_CODE
move_windows_to_workspace_by_id "$FIREFOX_IDS" $SPACE_WEB
move_windows_to_workspace_by_id "$FIREFOX_DEVTOOLS_IDS" $SPACE_CONSOLE
move_windows_to_workspace_by_id "$TERMINAL_IDS" $SPACE_CONSOLE
move_windows_to_workspace_by_id "$CHAT_IDS" $SPACE_CHAT
move_windows_to_workspace_by_id "$MPV_IDS" $SPACE_MEDIA
