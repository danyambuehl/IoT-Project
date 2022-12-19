#!/bin/bash
# /opt/iotproject

INTERVAL=10
# ls -lar *bash | awk '{print $1}'
ls -lar *.bash > rechte.html
rechte="cat rechte.html|cut -d " " -f 1" 
richtig="-rwxr-xr-x"

if [ $rechte != $richtig ]
    echo "muss angepasst werden"
fi


while [$rechte != $richtig] 
do
for what in /opt/iotproject/bin/*.bash
	do 
	echo $what
	ls -l $what
	chmod +x $what
	ls -l $what 
	done
sleep $INTERVAL
done