#!/bin/bash

DIRECTORYTOLIST=/tmp # this is the default

if [ $# -ge 1 ]
then
    if [ -d "$1" ] 
    then
        DIRECTORYTOLIST=$1
    else
        echo "Directory $1 not found."
        exit 52
    fi
fi
shift 

ls $DIRECTORYTOLIST

# For loop file prüfen und anhängen oder fehler

for htmlsnipped in $*
do 
    if [ -r "$htmlsnipped"]
    then
        cat $htmlsnipped >> test.html
    else
        echo "File $htmlsnipped is not readeble" >&2
    fi
done

