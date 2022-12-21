#!/bin/bash

TEMPLATEHTMLFILE=/opt/iotproject/etc/index.html.template 
INTERVAL=20
HTMLOUTPUT=/opt/iotproject/index.html

counter=0
while [ $counter -lt 20 ] 
    do
        zeit=$(date)
        # sed = Suchen und ersetzen s/ ersetzen _Zeit_ = was $zeit = mit was /g = auf einer zeile
        cat $TEMPLATEHTMLFILE | sed "s/_ZEIT_/$zeit/g" > $HTMLOUTPUT
        counter=$((counter+1))
        sleep 5
    done