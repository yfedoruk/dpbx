
#create cgroup
sudo cgcreate -a slava -g cpu:slava

# period for cpu in microseconds. 1 000 000 = 1 sec.
echo 1000000 > /sys/fs/cgroup/cpu/slava/cpu.cfs_period_us

# restrict 20% limit time usage for user's process
echo 200000 > /sys/fs/cgroup/cpu/slava/cpu.cfs_quota_us

# start limited process
cgexec -g cpu:slava firefox &