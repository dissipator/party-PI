# party-PI
This is a raspi powered collaborative video jukebox to set your next hosted party standout 

Make sure your pi has these installed : youtube-dl, omxplayer, nodejs, php

End result :

The script when run successfully shows playlist for 10 seconds, plays a song from output folder , tweets about it, and when done playing shifts it to archive folder. While showing the playlist it shows a QR code which when scanned opens up the webpage that allows us to input youtube urls for the player to download and add to playlist 

If we are out of songs it shifts 3 played songs to output folder from archive folder to keep the party going until someone adds a new youtube url to download. 

 
Steps to get it working:  
Put the files under php/ into your apache/nginx webserver 