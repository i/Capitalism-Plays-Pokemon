#!/bin/bash

if [ "$(whoami)" == 'jhuang' ]; then
    WID=`xdotool search --name "VBA-M" | head -1`
fi
if [ "$(whoami)" == 'ian' ]; then
    WID=`xdotool search --name "VisualBoyAdvance" | head -1`
fi

xdotool windowactivate $WID
sleep 0.1
xdotool keydown Down
sleep 0.125
xdotool keyup Down
