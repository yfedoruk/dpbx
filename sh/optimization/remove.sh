#  клиент мгновенных сообщений Empathy
sudo apt-get remove empathy empathy-common nautilus-sendto-empathy

# Клиент микроблогов Gwibber:
sudo apt-get remove gwibber gwibber-service

# лишние шрифты

sudo apt-get purge ttf-indic-fonts-core ttf-kacst-one ttf-khmeros-core ttf-lao ttf-punjabi-fonts ttf-unfonts-core
sudo fc-cache -fv; fc-cache ~/.fonts
