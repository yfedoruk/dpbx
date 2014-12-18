#41 Освобождаем память в Linux

#Освобождаем страницы кеша:
sudo echo 1 > /proc/sys/vm/drop_caches

#Освобождаем индексные дескрипторы:
sudo echo 2 > /proc/sys/vm/drop_caches

#Освобождаем все сразу:
sudo echo 3 > /proc/sys/vm/drop_caches

# Clear swap:
sudo swapoff -a
sudo swapon -a

sudo swapoff -a && sudo swapon -a