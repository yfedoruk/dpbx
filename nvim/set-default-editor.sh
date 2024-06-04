If nvim installed from snap package, then it is some issues:
# https://askubuntu.com/questions/1304472/update-alternatives-list-editor-does-not-show-editors-installed-via-snap#comment2653802_1304473
sudo update-alternatives --install /usr/bin/editor editor /snap/nvim/current/usr/bin/nvim 111
