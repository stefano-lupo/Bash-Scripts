#!/bin/sh        
#chmod u+x gettimes.sh  

station=$(zenity --list \
  --title="Choose Station" \
  --column="Station" \
    "Pearse" \
    "Sutton")

url1='http://www.irishrail.ie/timetables/live-departure-times?key='
url2='&REQ0JourneyStopskeyID=&HWAI=JS!js=yes&HWAI=JS!ajax=yes'
#notify-send $url1
url=$url1$station$url2
echo $url;
notify-send $url

#echo "Checking Times.."
#wget -q -O bashScripts/webscraping/scrapeResults.html 'http://www.irishrail.ie/timetables/live-departure-times?key=Pearse&REQ0JourneyStopskeyID=&HWAI=JS!js=yes&HWAI=JS!ajax=yes'

#wget -q -O bashScripts/webscraping/scrapeResults.html 'http://www.irishrail.ie/timetables/live-departure-times?key=${URL}&REQ0JourneyStopskeyID=&HWAI=JS!js=yes&HWAI=JS!ajax=yes'

wget -q -O bashScripts/webscraping/scrapeResults.html $url
python /home/stefano/bashScripts/webscraping/parse.py
 

 	
