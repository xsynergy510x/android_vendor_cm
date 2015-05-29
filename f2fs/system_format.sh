#!/sbin/busybox sh
# @alucard_24 @AntaresOne
#
# THIS PROPRIETARY SCRIPT IS PROVIDED ONLY FOR ALUCARD_24'S KERNEL
# AND ANTARESONE'S ROMS. NOT TO BE USED WITH ANY OTHER ROM/THING.
# DON'T PULL IT AND DISTRIBUTE IN YOUR STUFF WITHOUT ASKING FOR PERMISSION FIRST.
#
# http://forum.xda-developers.com/member.php?u=4899086
# http://forum.xda-developers.com/member.php?u=5464206
#
# Authorized use to Synergy510 - http://forum.xda-developers.com/member.php?u=4829924

mount > /tmp/mount.txt
SYSTEM=`cat /tmp/mount.txt | grep "system" | grep "f2fs"`

if [ "$SYSTEM" == "" ]; then
	mke2fs -T ext4 /dev/block/platform/msm_sdcc.1/by-name/system
else [ "$SYSTEM" == "f2fs" ]; then
	mkfs.f2fs /dev/block/platform/msm_sdcc.1/by-name/system
fi
