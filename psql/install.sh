#repair 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get purge postgresql*
sudo apt-get -f install
sudo apt-get install postgresql