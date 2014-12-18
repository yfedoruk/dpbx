#Ubuntu. Список любимых приложений
#Чтобы при переинсталляции системы вернуть себе любимые приложения скопом, нужно:
#Создать и сохранить список установленных пакетов:
sudo dpkg --get-selections > installed_list.txt

#После инсталляции новой системы сделать
sudo dpkg --set-selections < installed_list.txt
sudo apt-get -y update
sudo apt-get dselect-upgrade
