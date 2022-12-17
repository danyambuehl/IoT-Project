#!/bin/bash
INTERVAL=30
while true 
do
for what in /opt/iotproject/bin/*.bash
	do 
	# echo $what
	ls -l $what
	chmod +x $what
	ls -l $what 
	done
sleep $INTERVAL
done