#!/bin/bash
#use sudo enableNTFS.sh USBDISKLABELNAME
LABEL=$1
MOUNTPOINT=$2
PREFIX="$HOME/Desktop/"
USAGE="usage:sudo ./enableNTFS.sh [LABEL] [MOUNTPOINT],MOUNTPOINT is OPTIONAL"
#echo "LABEL=$LABEL none ntfs rw,auto,nobrowse" >> /etc/fstab
if [ ! $LABEL ];then
	echo "MUST NEED ONE PARAMETER"
	echo $USAGE
	exit -1
fi

if [ -f "$PREFIX$LABEL" ] || [ -d "$PREFIX$LABEL" ]; then
	echo "$PREFIX$LABEL EXIST,NEED TOW PARAMETERS"
	echo $USAGE
	exit -1
fi

if [ ! $MOUNTPOINT ]; then
	ln -s /Volumes/$LABEL $PREFIX$LABEL
else
	if [ -f "$PREFIX$MOUNTPOINT" ] || [ -d "$PREFIX$MOUNTPOINT" ]; then
		echo "$PREFIX$MOUNTPOINT EXIST,NEED CHANGE MOUNTPOINT NAME"
		echo $USAGE
		exit -1
	fi
	ln -s /Volumes/$LABEL $PREFIX$MOUNTPOINT
fi
