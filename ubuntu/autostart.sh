# https://askubuntu.com/questions/814/how-to-run-scripts-on-start-up

One approach is to add an @reboot cron task:

Running crontab -e will allow you to edit your cron.
Adding a line like this to it:

@reboot /path/to/script
will execute that script once your computer boots up.
