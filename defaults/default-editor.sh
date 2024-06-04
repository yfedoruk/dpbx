# GUI editor
sudo update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor $(which emacs) 100

# terminal editor
sudo update-alternatives --install /usr/bin/editor editor $(which nvim) 100
