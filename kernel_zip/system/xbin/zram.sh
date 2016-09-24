#!/system/bin/sh
a=`getprop zram.disksize 800`
b=`getprop sys.vm.swappiness 100`
echo $(($a*1024*1024)) > /sys/block/zram0/disksize;
mkswap /dev/block/zram0;
swapon /dev/block/zram0;
echo $(($b)) > /proc/sys/vm/swappiness



