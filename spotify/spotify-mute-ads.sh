#!/bin/bash
# Mute spotify when it starts advertisement
# Run like this
# nohup ./spotify-mute-ads.sh > /tmp/spotify_mute.log &
# or
# ./spotify-mute-ads.sh
# Link: https://gist.githubusercontent.com/logical-and/825bab160d604d82bf6ad9ebd3a6410d/raw/42d681bd8c6995c534c386718dd7914a6d5f0709/spotify-admute.sh
# Link: https://gist.github.com/pcworld/3198763/af2a4981c6f26075c0a16a261f5294f2cf5e5da5#gistcomment-3384837

# Settings
PAUSE_BEFORE_UNMUTE=2
PAUSE_NOT_ACTIVE=5

# VAR
AD_MUTED=0
AD_DETECTED=0

# FCT

get_pactl_nr() {
    pactl list | grep -E '(^Sink Input)|(media.name = \"Spotify\"$)' | cut -d \# -f2 \
    | grep -v Spotify
}

mute_player() {
  num=$(pactl list | grep -E '(^Sink Input)|(media.name = \"Spotify\"$)' | awk '/Spotify/ {print a} {a = $0}' | cut -c 13- | tail -n 1)
  pactl set-sink-input-mute $num yes
}

unmute_player() {
  num=$(pactl list | grep -E '(^Sink Input)|(media.name = \"Spotify\"$)' | awk '/Spotify/ {print a} {a = $0}' | cut -c 13- | tail -n 1)
  pactl set-sink-input-mute $num no
}

log() {
  local line=${1}
  echo \[$( date "+%H:%M:%S" )\] $line
}

# Unmute just in case this script crashed the previous time
unmute_player

# Endless loop, sort of service
while [ 1 ]; do

  # Find window id
  WM_ID=$(xdotool search --class "spotify" | sed -n 2p)

  if [ -z "$WM_ID" ]; then
    log "Spotify not active"
    sleep $PAUSE_NOT_ACTIVE
    continue
  fi

  # MAIN
  xprop -spy -id "$WM_ID" WM_NAME |
  while read -r XPROPOUTPUT; do
      XPROP_TRACKDATA="$(echo "$XPROPOUTPUT" | cut -d \" -f 2 )"
      DBUS_TRACKDATA="$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 \
      org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | grep xesam:title -A 1 | grep variant | cut -d \" -f 2)"

      if [[ "$DBUS_TRACKDATA" =~ ^(Advertisement|Spotify)$ ]]; then
          log "AD detected"
          AD_DETECTED="1"
      else
          AD_DETECTED="0"
          log "No AD detected"
      fi

      # Debug (uncomment if you need to debug the script)
      # echo "XPROP: \"$XPROP_TRACKDATA\""
      # echo "DBUS: \"$DBUS_TRACKDATA\""
      # echo "Debug: AD_MUTED = $AD_MUTED, AD_DETECTED = $AD_DETECTED"

      if [[ "$AD_DETECTED" = "0" ]] && [[ "$AD_MUTED" = "1" ]]; then
        log "Unmuting (AD_MUTED = $AD_MUTED, AD_DETECTED = $AD_DETECTED)"
        sleep $PAUSE_BEFORE_UNMUTE
        unmute_player
        AD_MUTED="0"
        log "Unmuted"
      elif [[ "$AD_DETECTED" = "1" ]] && [[ "$AD_MUTED" = "0" ]]; then
        log "Muting (AD_MUTED = $AD_MUTED, AD_DETECTED = $AD_DETECTED)"
        mute_player
        AD_MUTED="1"
        log "Muted"
      fi
  done

  log "Spotify is not active, unmuting"
  unmute_player
  AD_MUTED="1"

done

log "Something went wrong. Exiting."
exit 1