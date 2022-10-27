#/bin/sh

yt-dlp --get-url $1 | uniq > videos.txt 
aria2c --min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16 --header="Referer: https://www.erome.com/" -i videos.txt && rm videos.txt
