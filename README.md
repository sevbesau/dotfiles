# Dotfiles repo

## TODO

- [ ] dunst keybinds (dunstctl)
- [ ] list all required packages
- [ ] extract keybinds from i3 config
- [ ] scripts
  - [ ] backup 
    - [ ] documents 
    - [ ] notify on dotfile changes
  - [ ] mount 
  - [ ] generate
  - [ ] weather
  - [ ] define/dict
- [ ] bugs
  - [ ] eww weather min and max temp

## Handy links

- thinkpad t480 + arch [wiki](https://wiki.archlinux.org/title/Lenovo_ThinkPad_T480)

## General philosophy

### Minimalist utility

Applications should take the mainstage, no bars that take up valueable realestate.

Information like date, and battery should be available at a glance.
This is achieved using a sidebar that shows/hides using sticky corners.

### Colors

All system colors are based on the current wallpaper, this is done using pywal.

Code should always use the same colorscheme, I use monokai, this is also the fallback colorscheme.

## System information display

### [EWW](https://elkowar.github.io/eww/eww.html)

Eww is used to display a sidebar
These widgets are shown in a sidebar, for quick access

- time
- date
- system stats (ram, cpu, disk)
- music player (current, progress, controls)
- battery state
- bluetooth state
- network state
- weather

### [xob](https://github.com/florentc/xob)

- volume popup
- brightness popup

### [dunst](https://dunst-project.org/documentation/)

Dunst is the notification server, it is configured to give notifications for:

- mails
- music

## (WIP) Dependencies

Note: this list is not exhaustive, but gives a high level overview of the software my setup uses

### Software

- wool: local markdown server [aur](https://aur.archlinux.org/packages/wool/)
- xob: volume and brightness sliders [aur](https://aur.archlinux.org/packages/xob/)
- batify: udev rules for battery notifications [aur](https://aur.archlinux.org/packages/batify/)
- blight: brightness control [aur](https://aur.archlinux.org/packages/blight/)
- colorpicker: get hex color from any pixel [aur](https://aur.archlinux.org/packages/colorpicker/)
- libxft-bgra: libxft replacement to get coloremoji working [aur](https://aur.archlinux.org/packages/libxft-bgra/)
- mpdris2: mpris support for mpd [aur](https://aur.archlinux.org/packages/mpdris2/)
- ytdml: youtube-dl, a youtube downloader [aur](https://aur.archlinux.org/packages/ytmdl/)
- xcursor-breeze: cursor theme [aur](https://aur.archlinux.org/packages/xcursor-breeze/)
- toilet: ascii text art [aur](https://aur.archlinux.org/packages/toilet/)
- pulseaudio-modules-bt: more bluetooth audio codecs [aur](https://aur.archlinux.org/packages/pulseaudio-modules-bt/)
- slock: screen locker [custom build](https://github.com/sevbesau/slock)
- dmenu: its dmenu! [custom build](https://github.com/sevbesau/dmenu)
- throttled: makes sure my thinkpad t480 does not throttle
- eid-mw: eid reader driver (works with t480)
- maim: make screenshots
- neovim-nightly
- firefox: webbrowser
- thunderbird: mailclient
- mpv: video player
- mpd: music player
- mpc: mpd cli
- code: code editor
- dunst: notification client
- libnotify: notification server
- rxvt-unicode: terminal
- xterm: terminal
- i3-gaps: tiling window manager
- htop: process manager
- pulseaudio: audio manager
- transmission: torrent client
- autorandr: automatically set monitor config
- xev: getting keycodes
- gucharmap: font explorer
- python-pywal: generate a color scheme based on the wallpaper [docs](https://github.com/dylanaraps/pywal/wiki/Customization)
- redshift: shift display color temprature based on time
- rofi: application launcher
- papirus-icon-theme: icon theme to use with rofi
- pipewire: minimal latency audio and video capture and playback

### Fonts:

- Noto Sans
- Joy Pixels
- Noto Color Emoji
- Hack (monospace)

### Themes:
- gtk2: arc-dark
- icons: Papirus
- cursor: breeze

