#!/bin/bash

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

