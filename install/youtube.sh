## youtube terminal client: https://github.com/mps-youtube/mps-youtube

# install
# sudo apt install mps-youtube

## troubles
  # Error 403 Daily Limit Exceeded https://github.com/mps-youtube/mps-youtube/issues/551
  # https://www.slickremix.com/docs/get-api-key-for-youtube/
  # mpsyt> set api_key API_KEY


  # ERROR: YouTube said: Unable to extract video data
  # https://stackoverflow.com/questions/63816790/youtube-dl-error-youtube-said-unable-to-extract-video-data
  sudo apt purge youtube-dl
  sudo pip3 install youtube-dl

  # error parsing command line option title option requires parameter:
  # https://github.com/mps-youtube/mps-youtube/wiki/Troubleshooting#how-to-install-the-development-version
  sudo apt purge mps-youtube
  sudo apt install python3-pip
  sudo pip3 install --upgrade https://github.com/mps-youtube/pafy/archive/develop.zip https://github.com/mps-youtube/mps-youtube/archive/develop.zip

