#!/bash
let me put the pieces together.

You run configure (you usually have to type ./configure as most people don\'t have the current directory in their search path). This builds a new Makefile.
Type make This builds the program. That is, make would be executed, it would look for the first target in Makefile and do what the instructions said. The expected end result would be to build an executable program.
Now, as root, type make install. This again invokes make, make finds the target install in Makefile and files the directions to install the program.
This is a very simplified explanation but, in most cases, this is what you need to know.



# ---- !!!! No make !!!! --------
Only create "deb" -package:  "checkinstall make install" - creating deb! As use make - system may crash so far as you want update/install another packages/programs!
Это на самом деле очень плохо. Потом, при обновлении/установке других пакетов могут возникнуть серьёзные проблемы. Цитата с башорга в тему.
<combr> "Легким движением ./configure && make && make install
<combr> нормальный дистрибутив превращается в слакварь :)" ;)))
Автору:
Как было сказано выше, в той же убунте deb-пакет делается очень просто. checkinstall make install. Вуаля.

./configure && make && sudo make install — в наше время вредный совет…
это небезопасно и при сборке большого кол-ва софта таким методом, система преврашается в свалку.
в генте можно сделать оверлей и написать ебилд
в слаке есть buildpkg
в rpm-based есть вроде rpmbuild
и т.д.

http://stackoverflow.com/a/14516283
In a debian based system, instead of doing make install you can run sudo checkinstall (or .rpm etc. equivalent) to make a .deb that is also automatically installed. You can then remove it using synaptic.

#base commmands
./configure && make && sudo checkinstall

#if you merely want to create the .deb without carrying out the installation, use the command line switch
sudo checkinstall --install=no		# dpkg -i myGreatPackage.deb


#!ACHTUNG!
during 'checkinstall' MUST set version, or package building failed!