# expand path
fish_add_path /opt/homebrew/bin
fish_add_path ~/.meteor
fish_add_path "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
fish_add_path ~/.local/bin

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source

# set TERM var for ssh sessions
set TERM xterm-256color

# quick and dirty http server in the current directory
alias serve="npx http-server ."

# set alias for vim, muscle memmory...
alias vim="nvim"

# alias for cat, same story...
alias cat="bat"

# alias for dotfiles repo
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# alias for lsd
alias ls="lsd -l"

# set vi mode
fish_vi_key_bindings

# clear fish greeting
set fish_greeting

# print a pill shaped colored block
function print_block
	set color $argv[1]
	set text $argv[2]
	printf '%s%s%s%s%s%s%s%s%s' \
		(set_color $color)  (set_color normal) \
		(set_color -b $color) $text (set_color -b normal) \
		(set_color $color)  (set_color normal)
end

# dont prepend mode prompt, we include it ourselves in prompt fn
function fish_mode_prompt
end

# custom vi mode prompt
function vi_mode_prompt
	set icon ?
	set color normal
	switch $fish_bind_mode
		case default
			set icon N
			set color yellow
		case insert
			set icon I
			set color green
		case replace_one
			set icon R
			set color red
		case visual
			set icon V
			set color cyan
	end
	printf '%s[%s]%s' (set_color $color) $icon (set_color normal)
end

function git_prompt
	set git (fish_git_prompt | tr -d '()' | sed 's/^ //g')
	if test -z $git
		printf ' ';
	else
		printf '%s' (print_block red $git)
	end
end

# custom prompt
function fish_prompt
	set -g __fish_git_prompt_showdirtystate true
	set -g __fish_git_prompt_showupstream auto
	set -g __fish_git_prompt_showcolorhints false

	printf '%s %s %s\n%s $ ' \
		(print_block blue (hostname | cut -d. -f1 )) \
		(print_block $fish_color_cwd (prompt_pwd)) \
		(git_prompt) \
		(vi_mode_prompt)
end

#function shared
#	set SOURCE_DIR (PWD##*/)
#	set SOURCE_DIR ($SOURCE_DIR:-/)
#
#	echo "sshing to $SOURCE_DIR"
#	ssh $SOURCE_DIR"livestatikbe@"$SOURCE_DIR".ssh.statik.be"
#end

function docker-killall
	docker ps | tail -n+2 | cut -d' ' -f 1 | xargs docker kill
end

function kill-by-port
	lsof -i tcp:$argv | tail -n +2 | cut -f3 -d' ' | uniq | xargs kill
end

set -gx NVM_DIR (brew --prefix nvm)

function !! --description "Repeat the last command"
    history --max=1 | read -l cmd; eval $cmd
end

function sudo --description "Run commands as root, supporting 'sudo !!'"
    # Check if the second argument is '!!'
    if test (count $argv) -eq 1 -a "$argv[1]" = "!!"
        # Retrieve the last command from history
        set -l last_command (history --max=1)

        # If no history, notify and exit
        if test -z "$last_command"
            echo "No previous command found in history."
            return 1
        end

        # Run the last command with sudo
        eval command sudo $last_command
    else
        # Default behavior for other sudo calls
        command sudo $argv
    end
end

function envsource
    for line in (cat .env -p | grep -v '^#' | sed '/^[[:space:]]*$/d' | sed 's/="/=/' | sed 's/"$//')
        set item (string split -m 1 '=' $line)
        set -gx $item[1] $item[2]
        echo "Exported key $item[1]"
    end
end

function lscripts
    [ -f composer.json ] && echo 'composer.json scripts:' && cat composer.json | jq '.scripts';
    [ -f package.json ] && echo -e '\npackage.json scripts:' && cat package.json | jq '.scripts';
end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
