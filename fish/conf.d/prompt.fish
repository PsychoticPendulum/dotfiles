# vim:ft=dosini

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
		set_color f0f
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
	
	set_color ae0
	echo "~ "
end

# Greeting
function fish_greeting
	clear
end

