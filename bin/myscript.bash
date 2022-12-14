#!/bin/bash

echo "<html><body>" 1> index.html
echo "<h1>Mein Webserver</h1>" 1>> index.html
echo "Date: $(date +%H:%M:%S)" 1>> index.html
date +%H:%M:%S 1>> index.html
echo "Listet den Inhalt von Temp Verzeichniss:\n $(ls /tmp)" 1>> index.html
echo "</body></html>" 1>> index.html
