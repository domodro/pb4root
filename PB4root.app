#!/bin/sh
echo '#!/bin/sh' > /mnt/ext1/root.sh
echo 'cp /mnt/ext1/system/bin/su /mnt/secure/su' >> /mnt/ext1/root.sh
echo 'chmod 4755 /mnt/secure/su' >> /mnt/ext1/root.sh
echo 'rm /mnt/ext1/root.sh' >> /mnt/ext1/root.sh
echo '/sbin/reboot' >> /mnt/ext1/root.sh
/ebrmain/bin/netagent connect