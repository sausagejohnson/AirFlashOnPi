#!/bin/sh

# To start serial terminal /w console
# Add the following to the cmdline.txt console=serial0,115200
# Reference https://www.raspberrypi.org/documentation/configuration/uart.md for UART configuration
# Uncomment the next line
# /usr/sbin/startserialtty &

# Set CPU frequency governor to ondemand (default is performance)
echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

# Load modules - i2c-dev needs manually loaded even if enabled in config.txt
#/sbin/modprobe i2c-dev

# Start openssh daemon
/usr/local/etc/init.d/openssh start

# ------ Put other system startup commands below this line

login as: tc
tc@10.0.0.1's password:
   ( '>')
  /) TC (\   Core is distributed with ABSOLUTELY NO WARRANTY.
 (/-_--_-\)           www.tinycorelinux.net

tc@box:~$ pwd
/home/tc
tc@box:~$ cd /
tc@box:/$ ls
bin/                lib/                root/               sbin/
dev/                linuxrc             run/                sys/
etc/                mnt/                samba4.tcz          tmp/
home/               opt/                samba4.tcz.list     usr/
init                proc/               samba4.tcz.md5.txt  var/
tc@box:/$ ll
total 4
drwxrwxr-x    2 root     root          1360 Jan  1 00:00 bin/
drwxrwxr-x   13 root     root          4920 Jan  1 00:00 dev/
drwxr-xr-x    9 root     root           720 Jan  1 00:00 etc/
drwxrwxr-x    3 root     staff           60 Jan  6  2017 home/
-rwxr-xr-x    1 root     root           492 Mar  8  2021 init
drwxrwxr-x    5 root     root           920 Jan  1 00:00 lib/
lrwxrwxrwx    1 root     root            11 Jan  1 00:00 linuxrc -> bin/busybox
drwxr-xr-x    4 root     root            80 Jan  1 00:00 mnt/
drwxrwsr-x    2 root     staff          160 Jan  1 00:00 opt/
dr-xr-xr-x  153 root     root             0 Jan  1 00:00 proc/
drwxrwxr-x    2 root     root            80 Jan  1 00:00 root/
drwxrwxr-x    4 root     root            80 Jan  1 00:00 run/
lrwxrwxrwx    1 root     root            29 Jan  1 00:00 samba4.tcz -> /tmp/tcloop/samba4/samba4.tcz
lrwxrwxrwx    1 root     root            34 Jan  1 00:00 samba4.tcz.list -> /tmp/tcloop/samba4/samba4.tcz.list
lrwxrwxrwx    1 root     root            37 Jan  1 00:00 samba4.tcz.md5.txt -> /tmp/tcloop/samba4/samba4.tcz.md5.txt
drwxr-xr-x    2 root     root           980 Jan  1 00:00 sbin/
dr-xr-xr-x   12 root     root             0 Jan  1 00:00 sys/
drwxrwxrwt    4 root     root           120 Jan  1 00:00 tmp/
drwxr-xr-x    7 root     root           140 Jan  1 00:00 usr/
drwxrwxr-x    8 root     root           180 Jan  1 00:00 var/
tc@box:/$ df -h
Filesystem                Size      Used Available Use% Mounted on
tmpfs                   386.9M     14.2M    372.8M   4% /
tmpfs                   215.0M         0    215.0M   0% /dev/shm
/dev/mmcblk0p2           14.7G     47.2M     14.6G   0% /mnt/mmcblk0p2
/dev/loop0                1.0M      1.0M         0 100% /tmp/tcloop/firmware-rpi-wifi
/dev/loop1              128.0K    128.0K         0 100% /tmp/tcloop/wifi
/dev/loop2                2.0M      2.0M         0 100% /tmp/tcloop/openssh
/dev/loop3              512.0K    512.0K         0 100% /tmp/tcloop/hostapd
/dev/loop4              168.0K    168.0K         0 100% /tmp/tcloop/dnsmasq
/dev/loop5              232.0K    232.0K         0 100% /tmp/tcloop/gmp
/dev/loop6              384.0K    384.0K         0 100% /tmp/tcloop/nettle
/dev/loop7              128.0K    128.0K         0 100% /tmp/tcloop/libattr
/dev/loop8              800.0K    800.0K         0 100% /tmp/tcloop/p11-kit
/dev/loop9                5.2M      5.2M         0 100% /tmp/tcloop/samba4
/dev/loop10             128.0K    128.0K         0 100% /tmp/tcloop/wireless_tools
/dev/loop11             704.0K    704.0K         0 100% /tmp/tcloop/wpa_supplicant
/dev/loop12               1.4M      1.4M         0 100% /tmp/tcloop/openssl
/dev/loop13             384.0K    384.0K         0 100% /tmp/tcloop/libnl
/dev/loop14              48.0K     48.0K         0 100% /tmp/tcloop/libtasn1
/dev/loop15               8.8M      8.8M         0 100% /tmp/tcloop/samba4-lib
/dev/loop16               1.4M      1.4M         0 100% /tmp/tcloop/glib2
/dev/loop16               1.4M      1.4M         0 100% /tmp/tcloop/glib2
/dev/loop17               2.9M      2.9M         0 100% /tmp/tcloop/wireless-5.1
0.16-piCore
/dev/loop18             132.0K    132.0K         0 100% /tmp/tcloop/readline
/dev/loop19               2.1M      2.1M         0 100% /tmp/tcloop/ca-certifica
tes
/dev/loop20             128.0K    128.0K         0 100% /tmp/tcloop/gamin
/dev/loop21               1.9M      1.9M         0 100% /tmp/tcloop/gnutls
/dev/loop22             128.0K    128.0K         0 100% /tmp/tcloop/libacl
/dev/loop23             128.0K    128.0K         0 100% /tmp/tcloop/libcap
/dev/loop24             128.0K    128.0K         0 100% /tmp/tcloop/jansson
/dev/loop25              13.3M     13.3M         0 100% /tmp/tcloop/icu
/dev/loop26              16.0K     16.0K         0 100% /tmp/tcloop/talloc
/dev/loop27             128.0K    128.0K         0 100% /tmp/tcloop/libelf
/dev/loop28             452.0K    452.0K         0 100% /tmp/tcloop/pcre
/dev/loop29             224.0K    224.0K         0 100% /tmp/tcloop/ncurses
/dev/loop30             128.0K    128.0K         0 100% /tmp/tcloop/libidn2
/dev/loop31               1.6M      1.6M         0 100% /tmp/tcloop/unbound
/dev/loop32              32.0K     32.0K         0 100% /tmp/tcloop/bzip2-lib
/dev/loop33             840.0K    840.0K         0 100% /tmp/tcloop/gcc_libs
/dev/loop34             640.0K    640.0K         0 100% /tmp/tcloop/libunistring

/dev/loop35              68.0K     68.0K         0 100% /tmp/tcloop/expat2
tc@box:/$ cd /usr/local/var/
tc@box:/usr/local/var$ ls
cache/ lib/   lock/  run/
tc@box:/usr/local/var$ ls cache/
samba/
tc@box:/usr/local/var$ ls lib/
samba/
tc@box:/usr/local/var$ ls lib/samba/
account_policy.tdb  group_mapping.tdb   registry.tdb        usershares/
bind-dns/           private/            share_info.tdb
tc@box:/usr/local/var$ cd samba
-sh: cd: can't cd to samba: No such file or directory
tc@box:/usr/local/var$ cd lib/samba/
tc@box:/usr/local/var/lib/samba$ ll
total 1344
-rw-------    1 root     root        421888 Jan  1 00:01 account_policy.tdb
drwxr-xr-x    2 root     root            40 Jan  1 00:01 bind-dns/
-rw-------    1 root     root           696 Jan  1 00:01 group_mapping.tdb
drwxr-xr-x    3 root     root           100 Jan  1 00:00 private/
-rw-------    1 root     root        528384 Jan  1 00:01 registry.tdb
-rw-------    1 root     root        421888 Jan  1  1970 share_info.tdb
drwxrwx--T    2 root     root            40 Jan  1  1970 usershares/
tc@box:/usr/local/var/lib/samba$ cd /opt/
tc@box:/opt$ ls
bootlocal.sh  bootsync.sh   shutdown.sh   tcemirror
tc@box:/opt$ cat bootlocal.sh
#!/bin/sh

# To start serial terminal /w console
# Add the following to the cmdline.txt console=serial0,115200
# Reference https://www.raspberrypi.org/documentation/configuration/uart.md for UART configuration
# Uncomment the next line
# /usr/sbin/startserialtty &

# Set CPU frequency governor to ondemand (default is performance)
echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

# Load modules - i2c-dev needs manually loaded even if enabled in config.txt
#/sbin/modprobe i2c-dev

# Start openssh daemon
/usr/local/etc/init.d/openssh start

# ------ Put other system startup commands below this line

while ! cat /proc/net/dev | grep wlan0
do
        echo Waiting for wlan0
        sleep 2
done

sudo /mnt/mmcblk0p2/tce/startairflash.sh

hostapd /mnt/mmcblk0p2/tce/hostapd.conf &
dnsmasq -C /mnt/mmcblk0p2/tce/dnsmasq.conf -l /mnt/mmcblk0p2/tce/dnsmasq.leases &
/usr/local/etc/init.d/samba4 start
