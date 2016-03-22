#postgree (14.04) http://www.postgresql.org/download/linux/ubuntu/ https://wiki.postgresql.org/wiki/Apt

apt-get install wget ca-certificates
touch /etc/apt/sources.list.d/pgdg.list
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
apt-get update
apt-get install postgresql-9.5 pgadmin3 postgresql-client postgresql-contrib

