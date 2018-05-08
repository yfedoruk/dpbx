# https://askubuntu.com/questions/756800/batch-convert-and-split-ape-with-cue-to-flac-in-various-folders-from-terminal

# convert solid .ape file to .flac
find . -name "*.ape" -exec sh -c 'exec ffmpeg -i "$1" "${1%.ape}.flac"' _ {} \;

# then split .flac with .cue (info) to flac tracks
find . -name "*.cue" -exec sh -c 'exec shnsplit -f "$1" -o flac -t "%n_%p-%t" "${1%.cue}.flac"' _ {} \;
