from bs4 import BeautifulSoup
import os

def message(title,message):
    os.system('notify-send "' + title+'" "' + message+'"')

html_doc = open('scrapeResults.html','r')
table_file = open('table.txt','w')
soup = BeautifulSoup(html_doc, 'html.parser')
i =0

table = soup.table.contents[3]


#Write to terminal
#rows available at 3,7,9,..
i = len(table.contents)
x=3
print("--- From ----- Schd ------ Expc ------- Due --------- Status ---")
while True:
    if (x >= i):
        break
    row = table.contents[x]
    #print(len(row.contents)) 
    if(len(row.contents[11].contents) != 0):
        status = row.contents[11].contents[0]
    else:
        status = "Not yet departed"

    print("    " +row.contents[3].contents[0] + "       " + row.contents[5].contents[0] + "       " 
    + row.contents[7].contents[0] + "       "+ row.contents[9].contents[0]+ "      " +status )
    x = x + 4

# Write to notifcation
notification = "Sch: " + table.contents[3].contents[5].contents[0] + ", Exp: " + table.contents[3].contents[7].contents[0]
message("Next Train to Sutton",notification)
