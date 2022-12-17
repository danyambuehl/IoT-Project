#!/bin/bash

DIRECTORYTOLIST=/tmp # this is the default

if [ $# -eq 1 ]
then
    if [ -d "$1" ] 
    then
        DIRECTORYTOLIST=$1
    else
        echo "Directory $1 not found."
        exit 52
    fi
fi

ls $DIRECTORYTOLIST
shift 
cat $* >> test.html
