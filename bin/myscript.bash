#!/bin/bash
htmloutput=/opt/iotproject/index.html
DIRECTORYTOLIST=$1

echo "<html><body>" 1> $htmloutput
echo "<h1>Mein Webserver</h1>" 1>> $htmloutput
echo "Date: $(date +%H:%M:%S)" 1>> $htmloutput
date +%H:%M:%S 1>> $htmloutput
echo "Listet den Inhalt von Temp Verzeichniss:\n $(ls $DIRECTORYTOLIST)"
echo "</body></html>" 1>> $htmloutput
echo $0
echo $1 
echo $2 
echo $3
echo $*
echo $#