#moc
sudo apt-get -y install moc
#install mid3iconv for cyrillic tags in moc
sudo apt-get -y install python-mutagen
#find -iname '*.mp3' -print0 | xargs -0 mid3iconv -eCP1251 --remove-v1

#support .ape(loseless) format
sudo apt-get -y install moc-ffmpeg-plugin

# this commands splits the ape file and produces flac files
#sudo apt-get install shntool
#sudo apt-get install cuetools
# cuebreakpoints sample.cue | shnsplit -o flac sample.ape