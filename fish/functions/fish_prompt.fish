function fish_prompt
	set --local exit_code $status
	set --local directory (basename $PWD)
	set --local full_directory $PWD
	set --local outside "/mnt"

	set_color 0f0
	echo -n ">_/"

	if string match -e -q $outside $full_directory
		set_color 0ff
	else
		set_color 0a0
	end
	echo -n $directory
	
	if test "$exit_code" != "0"
		set_color f00
		echo -n "["
		echo -n $exit_code
		echo -n "]"
	else
		set_color 0f0
		echo -n "/"
	end
	
	set_color 0f0
	echo -n "~"
	set_color f0f
	echo " "
end
