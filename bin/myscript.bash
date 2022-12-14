#!/bin/bash
htmloutput=/opt/iotproject/index.html
DIRECTORYTOLIST=/tmp
echo "<html><body>" 1> $htmloutput
echo "<h1>Mein Webserver</h1>" 1>> $htmloutput
echo "Date: $(date +%H:%M:%S)" 1>> $htmloutput
date +%H:%M:%S 1>> $htmloutput
echo "Listet den Inhalt von Temp Verzeichniss:\n $(ls $DIRECTORYTOLIST)" 1>> $htmloutput
echo "</body></html>" 1>> $htmloutput
