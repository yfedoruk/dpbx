https://askubuntu.com/questions/13447/how-do-i-change-the-default-text-editor#comment2397902_537762

# GUI editor
sudo update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor $(which emacs) 100

# terminal editor (issues from snap package)
# https://askubuntu.com/questions/1304472/update-alternatives-list-editor-does-not-show-editors-installed-via-snap#comment2653802_1304473
sudo update-alternatives --install /usr/bin/editor editor /snap/nvim/current/usr/bin/nvim 111
