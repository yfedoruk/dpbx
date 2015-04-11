#bin/sh

#In bash, you should be able to do:

kill $(ps aux | grep '[p]ython csp_build.py' | awk '{print $2}')

kill $(ps aux | grep '[c]hrome' | awk '{print $2}')

#Details on its workings are as follows:

#The ps gives you the list of all the processes.
#The grep filters that based on your search string, [p] is a trick to stop you picking up the actual grep process itself.
#The awk just gives you the second field of each line, which is the PID.
#The $(x) construct means to execute x then take its output and put it on the command line. The output of that ps pipeline inside that construct above is the list of process IDs so you end up with a command like kill 1234 1122 7654.


kill -9 PID

#For get a PID use:
ps x --forest


sudo kill -9 $(pidof firefox)