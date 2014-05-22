#!/bin/bash
for i in `lsblk --nodeps -o NAME --noheadings` 
   do echo -ne "Disk ${i} has had " 
   printf "%d" `cat /sys/block/${i}/device/ioerr_cnt`
   echo " errors since boot up." 
done


# [bgolliher@admin001 ~]$ for i in `lsblk --nodeps -o NAME --noheadings` ; do echo -ne "Disk ${i} has had " ; printf "%d" `cat /sys/block/${i}/device/ioerr_cnt`; echo " errors since boot up." ; done
# Disk sda has had 2 errors since boot up.
# Disk sdc has had 0 errors since boot up.
# Disk sdd has had 57266 errors since boot up.
# Disk sde has had 0 errors since boot up.
# Disk sdf has had 0 errors since boot up.
# Disk sdg has had 0 errors since boot up.
# Disk sdh has had 0 errors since boot up.
# Disk sdi has had 0 errors since boot up.
# Disk sdj has had 0 errors since boot up.
# Disk sdk has had 0 errors since boot up.
# Disk sdl has had 0 errors since boot up.
# Disk sdm has had 0 errors since boot up.
# Disk sdb has had 0 errors since boot up.
# [bgolliher@admin001 ~]$ 
