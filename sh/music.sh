find -iname '*.mp3' -print0 | xargs -0 mid3iconv -eCP1251 --remove-v1


#sudo apt-get install cuetools shntool
#To split a flac file back to the original files using a .cue file:
cuebreakpoints '<cue_file_path>' | shnsplit -o flac '<audio_flac_file_path>'  
