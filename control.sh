#!/bin/bash
WID=`xdotool search --name "VBA-M" | head -1`
xdotool windowactivate $WID
xdotool keydown Down
sleep 0.125
xdotool keyup Down
