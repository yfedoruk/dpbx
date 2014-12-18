gconftool-2 --get /apps/metacity/general/reduced_resources
gconftool-2 --type bool --set /apps/metacity/general/reduced_resources true

gconftool-2 --type bool --set /apps/panel/global/enable_animations false
gconftool-2 --get /apps/panel/global/enable_animations

gconftool-2 --get /desktop/gnome/interface/accessibility
gconftool-2 --type bool --set /desktop/gnome/interface/accessibility false

gconftool-2 --get /apps/panel/global/panel_animation_speed
gconftool-2 --type string --set /apps/panel/global/panel_animation_speed panel-speed-fast

gconftool-2 --get /apps/metacity/general/auto_raise_delay
gconftool-2 --type integer --set /apps/metacity/general/auto_raise_delay 100


#GTK
gtk-menu-popup-delay = 0
gtk-menu-popdown-delay = 0
gtk-menu-bar-popup-delay = 0
gtk-timeout-expand = 0
gtk-timeout-initial = 0


