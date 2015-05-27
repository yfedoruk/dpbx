#List All Ubuntu PPAs with Single Command http://www.ubuntuvibes.com/2012/10/list-all-ubuntu-ppas-with-single-command.html
grep -RoPish "ppa.launchpad.net/[^/]+/[^/ ]+" /etc/apt | sort -u | sed -r 's/\.[^/]+\//:/'

#for removing ppa
sudo apt-get install ppa-purge

#for packages from official repositories
sudo ppa-purge ppa_name

#from unofficial
sudo apt-get purge package_name

#universal (not safe)
sudo add-apt-repository --remove ppa:whatever/ppa

#best
rm /etc/apt/sources.list.d/{{ppa_name}}