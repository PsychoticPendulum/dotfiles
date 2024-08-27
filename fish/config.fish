# vim:ft=dosini

fish_vi_key_bindings

# Git
alias gc="git commit -m"
alias gcm="git commit -m"
alias gp="git push"
alias gru="git remote update && git pull"
alias ga="git add -u"

set -Ux EDITOR vim
set -Ux VISUAL vim

set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "informative"

set blue (set_color blue)
set green (set_color green)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)

set __fish_git_prompt_color_cleanstate green
set __fish_git_prompt_color_conflictedstate yellow
set __fish_git_prompt_color_dirtystate yellow
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_stagedstate yellow
set __fish_git_prompt_color_stashstate yellow
set __fish_git_prompt_color_stateseparator normal
set __fish_git_prompt_color_untrackedfiles red
set __fish_git_prompt_color_upstream_ahead yellow
set __fish_git_prompt_color_upstream_behind yellow
set __fish_git_prompt_color_upstream_diverged red
set __fish_git_prompt_color_upstream_equal green


set __fish_git_prompt_char_cleanstate ' '
set __fish_git_prompt_char_conflictedstate ' '
set __fish_git_prompt_char_dirtystate ' '
set __fish_git_prompt_char_invalidstate ' '
set __fish_git_prompt_char_stagedstate ' '
set __fish_git_prompt_char_stashstate ' '
set __fish_git_prompt_char_stateseparator ' | '
set __fish_git_prompt_char_untrackedfiles ' '
set __fish_git_prompt_char_upstream_ahead ' '
set __fish_git_prompt_char_upstream_behind ' '
set __fish_git_prompt_char_upstream_diverged ' '
set __fish_git_prompt_char_upstream_equal ' '

# Set prompt
function fish_prompt
	set --local exit_code $status
	# set --local directory (basename $PWD)
	set --local directory $PWD
	set --local full_directory $PWD
	set --local outside "/mnt"
	set --local repo "$ls .git"
	set --local user $(echo -n $USER)

	set_color 0f0
	echo -n "["
	set_color 80f
	echo -n "$user"
	set_color ff0
	echo -n "@"
	set_color 0ff
	echo -n "$hostname"
	set_color 0f0
	echo -n "] "

	set_color ff0
	echo -n " "

	set_color 0f0
	echo -n "["
	if string match -e -q $outside $full_directory
		set_color 08f
	else if string match -q "/" $full_directory
		set_color 800
	else
		set_color 0f8
	end
	echo -n "$directory"
	set_color 0f0
	echo -n "]"
	set_color fff
	printf '%s ' (__fish_git_prompt)	
	echo ""

	set_color 0f0
	echo -n " ╰─ "

	if test "$exit_code" != "0"
		set_color f00
		echo -n "["
		echo -n $exit_code
		echo -n "]"
		set_color 0f0
	end
end

# Greeting
function fish_greeting
	cat $HOME/bin/assets/loaf.txt | shuf | head -n 1 | lolcat
end

# ---------------
# --- ALIASES ---
# ---------------

# Fun
alias C:="figlet C:"
alias :D="figlet :D"
alias :P="figlet :P"

# Config Shortcuts
alias scriptc="cd ~/bin/"
alias fishc="cd ~/.config/fish/"
alias i3c="cd ~/.config/i3"
alias polyc="cd ~/.config/polybar"
alias themec="cd ~/bin/themes"

# Better Shell
alias :wq="i3 kill"
alias :q="i3 kill"
alias cls="cd ; clear ; /home/$USER/bin/neofetch.sh"
alias c="clear ; cd"
alias q="clear"
alias ll="lsd -Alh"
alias ls="exa"
alias l="lsd -lh"
alias cp="cp -v"
alias mv="mv -v"
alias ra="ranger"
alias nfetch="neofetch | lolcat -F 0.1 -a -s 5000 -S 174"
alias rss="newsboat -r"
alias goodbye="pub light/hall off ; poweroff"
alias measure="ls | wc -l"

# I am an idiot
alias lös="ls"
alias ös="ls"
alias cös="cls"
alias SHIT="xdotool key Caps_Lock"

# Network
alias snf="sudo python3 ~/bin/sniffer.py"
alias pg="ping -c 4 8.8.8.8"

# Gaming
alias sin="java /mnt/veracrypt1/School/Programming/src/Sinuswave/Sinuswave.java"

# sudo ip route add default via <gateway> dev <interface>

# Things I need to remember
alias token="cat ~/.info/token.pgp"
alias nasty="sudo mount -t nfs 192.168.4.254:/nastier /mnt/NAS/"
alias bzod="rclone mount --daemon bzod: /mnt/share/bzod"
alias od="rclone mount --daemon od: /mnt/share/od"
alias gdr="rclone mount --daemon gdr: /mnt/share/gd"
alias webdav="rclone mount --daemon webDAV: /mnt/share/webdav"

# Start X Sessions
alias skde="startx /bin/startplasma-x11"
alias si3="startx /bin/i3"
alias logout="qdbus org.kde.ksmserver /KSMServer logout 1 3 3"

alias k="kubectl"
alias kns="kubens"
alias ksx="kubectx"
alias t="tmux"

function ktf
	set cmd $(history | grep -E "^k " | sort | uniq | fzf)
	commandline $cmd
end

function start_tmux
    if not set -q TMUX
        if not string match -q 'tmux' $TERM
            exec ~/bin/tmux.sh
        end
    end
end

start_tmux
