#!/bin/bash        
chmod u+x gettimes.sh  

echo "Checking Times.."
wget -q -O scrapeResults.html 'http://www.irishrail.ie/timetables/live-departure-times?key=Sutton&REQ0JourneyStopskeyID=&HWAI=JS!js=yes&HWAI=JS!ajax=yes'
python /home/stefano/bashScripts/webscraping/parse.py


 	
