#!/bin/bash

TEMPLATEHTMLFILE=/opt/iotproject/etc/index.html.template 
INTERVAL=20
HTMLOUTPUT=/var/www/html/index.html

counter=0
mosquitto_sub -h localhost -t '#' -F "%t %p" | while read topic payload ; do 
    if [ "$topic" = "sensor/temp" ]
    then 
        zeit=$(date)
        # sed = Suchen und ersetzen s/ ersetzen _Zeit_ = was $zeit = mit was /g = auf einer zeile
        cat $TEMPLATEHTMLFILE | \
            sed "s/_ZEIT_/$zeit/g" | \
            sed "s/_TEMP_/$payload/g" > $HTMLOUTPUT
    fi
    done