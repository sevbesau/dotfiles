# Dotfiles repo

## TODO

- [ ] dunst keybinds (dunstctl)
- [ ] list all required packages
- [ ] screenshots
- [ ] extract keybinds from i3 config
- [ ] scripts
  - [ ] auto backup/sync
    - [ ] documents 
  - [ ] mount 
  - [ ] generate -> script, service, etc...
  - [ ] weather -> script and eww module
  - [ ] define/dict

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
- xcursor-breeze: cursor theme [aur](https://aur.archlinux.org/packages/xcursor-breeze/)
- toilet: ascii text art [aur](https://aur.archlinux.org/packages/toilet/)
- slock: screen locker [custom build](https://github.com/sevbesau/slock)
- throttled: makes sure my thinkpad t480 does not throttle
- maim: make screenshots
- neovim: text editor
- firefox: web browser
- thunderbird: mail client
- mpv: video player
- mpd: music player
- mpc: music player cli
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

## Configs
### Network
systemd-networkd, systemd-resolved and wpa_supplicant are used to handle networking.

For wired connections, create the following config **/etc/systemd/network/10-ethernet.network**:
```
[Match]
Name=en*

[Network]
DHCP=yes
```


For wireless connections, create the following config **/etc/systemd/network/10-wireless.network**:
```
[Match]
Name=wl*

[Network]
DHCP=yes
```

And also **/etc/wpa_supplicant/wpa_supplicant-<if-name>.conf**
```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=wheel
ap_scan=1
update_config=1
country=BE
```

Finally start and enable the following services
systemd-networkd, systemd-resolved, wpa_supplicant@<if-name>

### Bluetooth
TODO installation

udev rule for setting the caps to escape on bt keyboards: **/etc/udev/rules.d/10-bluetooth.rules**
```
ACTION=="add", SUBSYSTEM=="hwmon", \
ATTR{name}=="hid_f1:69:6e:f7:37:77_battery", \
IMPORT{program}="/usr/bin/xpub", \
RUN+="/bin/su $env{XUSER} -c 'setxkbmap -option caps:escape'"
```

to enable bluetooth on startup/wake edit the following line in **/etc/bluetooth/main.conf**
```
[Policy]
AutoEnable=true
```

### Audio
#### BEEP
disable pc speaker
unload module at runtime: rmmod pcskpr
disable at boot: create file: **/etc/modprobe.d/nobeep.conf**
```
blacklist pcspkr
```

### pipewire

### keyboard
caps <-> escape: [create a custom keymap](https://help.ubuntu.com/community/Customi)
