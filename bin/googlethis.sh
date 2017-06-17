#!/bin/sh
chmod u+x googlethis.sh 



#query=($(zenity --entry --title="Search Google" --text="Enter Query" ))
#echo $query
query=$(zenity --entry --title="Search Google" --text "Enter Query" --entry-text ""); echo $szAnswer
#echo $query
google-chrome "www.google.com/search?q=$query"