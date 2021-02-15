# https://askubuntu.com/questions/1286690/how-to-scale-up-the-ui-of-spotify-for-4k-displays

#https://zoomadmin.com/HowToInstall/UbuntuPackage/stterm
sudo apt-get install -y stterm


# https://askubuntu.com/questions/990833/cannot-add-custom-launcher-to-ubuntu-dock-add-to-favorites-option-does-not-sh
gsettings get org.gnome.shell favorite-apps
gsettings set org.gnome.shell favorite-apps "['thunderbird.desktop', 'org.gnome.Nautilus.desktop', 'postman_postman.desktop', 'jetbrains-goland.desktop', 'google-chrome.desktop', 'spotify_spotify.desktop', 'chromium_chromium.desktop', 'appimagekit_2affce31ba67e37a1a575a616543473e-Telegram_Desktop.desktop', 'gnome-system-monitor.desktop', 'gnome-control-center.desktop', 'org.gnome.Terminal.desktop', 'st.desktop']"