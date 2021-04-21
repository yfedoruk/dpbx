#!/bin/bash

# remove background picture
gsettings set org.gnome.desktop.bacgsettings set org.gnome.desktop.background picture-uri ""

# set background black color
gsettings set org.gnome.desktop.background primary-color '#000000'
