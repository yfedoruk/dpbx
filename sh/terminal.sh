gsettings set org.gnome.desktop.default-applications.terminal exec 'xfce4-terminal'

### http://askubuntu.com/questions/5241/ubuntu-editable-menu-accelerators-on-a-per-app-basis-where-is-this-option
sudo apt-get install dconf-tools

#$ dconf-editor -> set:
/org/gnome/desktop/interface/can-change-accels