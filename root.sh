#!/bin/sh
cp /mnt/ext1/system/bin/su /mnt/secure/su
chmod 4755 /mnt/secure/su
rm /mnt/ext1/root.sh
/sbin/reboot