https://askubuntu.com/questions/13447/how-do-i-change-the-default-text-editor#comment2397902_537762

# GUI editor
sudo update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor $(which emacs) 100

# terminal editor
sudo update-alternatives --install /usr/bin/editor editor $(which nvim) 100
