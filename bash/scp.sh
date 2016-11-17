#Copying files from local directory to remote server:

scp local/file account_name@hostname:/path/to/new/location

scp -rvC local/directory/* account_name@hostname:/path/to/new/location

#and back (from home consol too)
scp -rvC -P2222 username@server:/home/username/filename /localDirectory/      (-P2222 as need to different port than 22)





mysqldump --opt <database> | gzip -c | ssh user@wherever 'cat > /tmp/yourfile.sql.gz'
mysqldump -u $MyUSER -h $MyHOST -p$MyPASS $db | gunzip -9 > $FILE



#Мы все знаем и любим sftp и scp. Особенно за такую приятную мелочь как отсутствие докачки. Настоящие мужчины файлы не докачивают. Если трехгиговая немецкая порнушка оборвалась насередине, то ее качают заново ибо всякие там -c и rsync это удел слабаков и нытиков.
#Это официальная позиция разработчиков - в scp докачки небудет.
#Но. Человек слаб. Так в дальнем уголке .profile появляется:
alias scpr="rsync --partial --progress --rsh=ssh"


rsync – отличная замена scp!
Calendar апреля 28, 2011 | Автор: dimio
Довольно смешно, но впервые воспользовался rsync только три недели назад. До этого пытался один раз, не разобрался с ключами и забросил. Зря, как оказалось!
Главное достоинство rsync по сравнению с scp – показывает прогресс загрузки. Также рекурсивно загружает директории. Немаловажно – поддерживает докачку в обе стороны.
Попользовался и сделал себе для bash алиас в bashrc rsync="rsync -P", теперь всё время его использую для загрузки на хостинг. Авторизацию по ключам тоже настроил, так что можно делать бэкапы.
Основной синтаксис вызова: rsync логин@хост:/откуда/что логин@хост:/куда/что. В случае локальной машины логин и хост указывать естественно не нужно, достаточно только пути.
Основные опции, которыми пользуюсь: -P – выводит прогресс-бар, -r – рекурсивная загрузка.
Если кто ещё тоже до сих пор не знаком с rsync и пользуется scp/sftp – самое время попробовать!

rsync -av --partial --rsh=ssh /mnt/320/downloads/movie.avi 192.168.0.20:~/downloads/ - туда



// scp -rvC root@91.151.215.52:/home/www/fashione_staging2.sql.tgz /home/slava/

rsync -av --partial --progress --rsh=ssh root@91.151.215.52:/home/www/staging.tgz /home/slava/rsync/

[root@www /]# find . -name httpd.conf
./etc/httpd/conf/httpd.conf

