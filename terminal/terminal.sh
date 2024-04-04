#set default terminal
# https://askubuntu.com/questions/1364954/make-alacritty-the-default-terminal-permanently
# https://askubuntu.com/a/1367665

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator ~/.local/kitty.app/bin/kitty 50

# check
update-alternatives --config x-terminal-emulator
