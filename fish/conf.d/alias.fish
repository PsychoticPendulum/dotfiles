# vim:ft=dosini

# Git
alias gc="git clone"
alias gcm="git commit -m"
alias gp="git push"
alias gu="git pull"
alias ga="git add"

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
alias cls="cd ; clear ; nfetch && loaf.py"
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
alias nfetch="neofetch --ascii_distro Arch | lolcat -F 0.1 -a -s 5000 -S 174"

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
alias nasty="sudo mount -t nfs 192.168.178.24:/nasty /mnt/NAS"

# Gaming
alias sin="java /mnt/veracrypt1/School/Programming/src/Sinuswave/Sinuswave.java"

# sudo ip route add default via <gateway> dev <interface>

# Things I need to remember
alias token="cat ~/.info/token.pgp"
