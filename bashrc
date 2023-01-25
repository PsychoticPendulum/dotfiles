export PATH=$PATH:/home/$USER/Developer/.scripts
export PATH=$PATH:/home/$USER/Developer/.scripts/bin
export PATH=$PATH:/home/$USER/.screenlayout
export EDITOR="vim"
export SHELL="fish"
export GOPATH=$HOME/Developer/GO/ENV/

QT_STYLE_OVERIDE=GTK+
QT_QPA_PLATFORMTHEME=gtk2

LPIID="LPI000525263"

fish

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

source /home/psychicpenguin/.config/broot/launcher/bash/br
