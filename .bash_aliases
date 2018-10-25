# this file houses all of the bash aliasses

# alias for getting the cpu temp
alias temp='cat /sys/class/thermal/thermal_zone0/temp'

# alias for reloading .bashrc
alias reload='source ~/.bashrc'

# alias for the brightness script
alias backlight='./.config/Scripts/backlight.sh'

# more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lsss='ll -a --color | less -R'

# network stuff
alias Connect='nmcli --ask con up'
alias Disconnect='nmcli --ask con down'
alias Nmanager='nm-connection-editor'

# make mounting easyer
alias Mount='sudo mount -o gid=users,fmask=113,dmask=002'

# open an imagevieuwer
alias image='sxiv-rifle ./'

# start python cgi http server
alias Phttp='python3 -m http.server --cgi'

# ps2 emu
alias ps2='PCSX2'

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
