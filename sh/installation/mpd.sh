apt-get -y install mpd 
apt-get -y install mpc
apt-get -y install ncmpcp
#sudo apt-get install paprefs 
#Then run it (e.g. alt+f2 and enter paperfs). Click the Network Server tab, 
#then check the Enable network access to local sound devices box, 
#and finally check the Don't require authentication box. 
#At this point make sure to restart the pulseaudio daemon.
#sudo service pulseaudio restart

printf "[Desktop Entry]\r
Encoding=UTF-8\r
Type=Application\r
Name=Music Player Daemon\r
Comment=Server for playing audio files\r
Exec=mpd\r
StartupNotify=false\r
Terminal=false\r
Hidden=false\r" > ~/.config/autostart/mpd.desktop

mkdir -p ~/.mpd/playlists
cp /etc/mpd.conf ~/.mpd/mpd.conf
touch ~/.mpd/{mpd.db,mpd.log,mpd.pid,mpdstate}

MyUser="slava"
sed -i "s/^music_directory.*$/music_directory\t\t\"\/home\/$MyUser\/Music\"/" ~/.mpd/mpd.conf
sed -i "s/^playlist_directory.*$/playlist_directory\t\t\"\/home\/$MyUser\/\.mpd\/playlists\"/" ~/.mpd/mpd.conf
sed -i "s/^db_file.*$/db_file\t\t\"\/home\/$MyUser\/\.mpd\/mpd.db\"/" ~/.mpd/mpd.conf
sed -i "s/^log_file.*$/log_file\t\t\"\/home\/$MyUser\/\.mpd\/mpd.log\"/" ~/.mpd/mpd.conf
sed -i "s/^pid_file.*$/pid_file\t\t\"\/home\/$MyUser\/\.mpd\/mpd.pid\"/" ~/.mpd/mpd.conf
sed -i "s/^state_file.*$/state_file\t\t\"\/home\/$MyUser\/\.mpd\/mpdstate\"/" ~/.mpd/mpd.conf
chmod -R 777 ~/.mpd/

#update database
mpc update

