# vim:ft=dosini

fish_vi_key_bindings

# Git
alias gc="git clone"
alias gcm="git commit -m"
alias gp="git push"
alias gu="git pull"
alias ga="git add"

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

	set_color 6f0
	echo -n "$user "
	set_color 0f0
	echo -n " "

	if string match -e -q $outside $full_directory
		set_color 0ff
	else if string match -q "/" $full_directory
		set_color f00
	else
		set_color 6f0
	end
	echo -n " $directory/"
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
	clear
end

# ---------------
# --- ALIASES ---
# ---------------

# Fun
alias C:="figlet C:"
alias :D="figlet :D"
alias :P="figlet :P"

# Config Shortcuts
alias scriptc="cd ~/Developer/.scripts/"
alias fishc="cd ~/.config/fish/"
alias i3c="cd ~/.config/i3"
alias polyc="cd ~/.config/polybar"
alias themec="cd ~/Developer/.scripts/themes"

# Better Shell
alias cls="cd ; clear ; nfetch"
alias cs="clear ; colorscript random"
alias c="clear ; cd"
alias q="clear"
alias ll="lsd -Alh"
alias ls="exa"
alias l="lsd -lh"
alias cp="cp -v"
alias mv="mv -v"
alias ra="ranger"
alias rh="ranger --cmd 'set show_hidden True'"
alias nfetch="neofetch --ascii_distro Artix | lolcat -F 0.1 -a -s 5000 -S 174"
alias rss="newsboat -r"

# Locations
alias cra="clear ; ra"
alias uni="cd /mnt/veracrypt1/School ; clear ; ll -l"
alias eco="cd /mnt/veracrypt1/School/Economy; cra"
alias eng="cd /mnt/veracrypt1/School/English ; cra"
alias ger="cd /mnt/veracrypt1/School/German ; cra"
alias its="cd /mnt/veracrypt1/School/ITS ; cra "
alias 1it="cd /mnt/veracrypt1/School/ITT-1 ; cra "
alias 2it="cd /mnt/veracrypt1/School/ITT-2 ; cra "
alias pug="cd /mnt/veracrypt1/School/Politics ; cra "
alias ap="cd /mnt/veracrypt1/School/Programming/src ; cra"
alias lnx="cd /mnt/veracrypt1/School/LinuxEssentials ; cra"
alias psy="cd /mnt/veracrypt1/School/Programming/src/PsychicShell ; cra"
# External Device Shortcuts
alias nas="cd /mnt/NAS ; q ; l"
alias media="cd /mnt/media ; q ; l"
alias vera="cd /mnt/veracrypt1 ; q ; l"

# I am an idiot
alias lös="ls"
alias ös="ls"
alias cös="cls"

# Network
alias snf="sudo python3 ~/Developer/.scripts/sniffer.py"
alias pg="ping -c 4 8.8.8.8"

# Gaming
alias sin="java /mnt/veracrypt1/School/Programming/src/Sinuswave/Sinuswave.java"

# sudo ip route add default via <gateway> dev <interface>

# Things I need to remember
alias token="cat ~/.info/token.pgp"
alias nasty="sudo mount -t nfs 192.168.4.23:/nasty /mnt/NAS/"
