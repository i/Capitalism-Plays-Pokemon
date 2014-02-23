#!/bin/bash

if [ "$(whoami)" == 'jhuang' ]; then
    WID=`xdotool search --name "VBA-M" | head -1`
fi
if [ "$(whoami)" == 'ian' ]; then
    WID=`xdotool search --name "VisualBoyAdvance" | head -1`
fi
if [ "$(whoami)" == 'root' ]; then
    WID=`xdotool search --name "VisualBoyAdvance" | head -1`
fi

function goDown {
    xdotool windowactivate $WID
    sleep 0.1
    xdotool keydown Down
    sleep 0.25
    xdotool keyup Down
}

function goUp {
    xdotool windowactivate $WID
    sleep 0.1
    xdotool keydown Up
    sleep 0.25
    xdotool keyup Up
}

function goLeft {
    xdotool windowactivate $WID
    sleep 0.1
    xdotool keydown Left
    sleep 0.25
    xdotool keyup Left
}

function goRight {
    xdotool windowactivate $WID
    sleep 0.1
    xdotool keydown Right
    sleep 0.25
    xdotool keyup Right
}

function pressZ {
    xdotool windowactivate $WID
    sleep 0.1
    xdotool keydown z
    sleep 0.25
    xdotool keyup z
}

function pressX {
    xdotool windowactivate $WID
    sleep 0.1
    xdotool keydown x
    sleep 0.25
    xdotool keyup x
}


function pressEnter {
    xdotool windowactivate $WID
    sleep 0.1
    xdotool keydown Return
    sleep 0.25
    xdotool keyup Return
}

case $1 in
"down")
	goDown
	;;
"up")
	goUp
	;;
"left")
	goLeft
	;;
"right")
	goRight
	;;
"a")
	pressZ
	;;
"b")
	pressX
	;;
"start")
	pressEnter
	;;

esac
