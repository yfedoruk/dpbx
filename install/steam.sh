# https://askubuntu.com/questions/635851/error-in-installing-steam-on-ubuntu-15-04


#ran this command - https://wiki.archlinux.org/index.php/Steam/Troubleshooting
find ~/.steam/root/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" -o -name "libgpg-error.so*" \) -print -delete
