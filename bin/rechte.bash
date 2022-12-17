#!/bin/bash

for what in /opt/iotproject/bin/*.bash
	do 
	echo $what
	ls -l $what
	chmod +x $what
	ls -l $what 
	done
