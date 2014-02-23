#!/bin/bash

# kill ascii portal
kill $(ps aux | grep asciiportal | head -n 1 | awk '{print $2}')

# move the level
rm ~/Downloads/asciiportal/maps/001.txt
./levelGen.sh $1 > 001.txt
mv 001.txt ~/Downloads/asciiportal/maps/

# restart the game
cd ~/Downloads/asciiportal/
./asciiportal &
cd ~/Capitalism-Plays-Pokemon/


