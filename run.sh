#! /bin/bash

# INRES="1360x768"
# OUTRES="1360x768"
INRES="40x40"
#OUTRES="40x40"
FPS="30" # fps
QUAL="slow"

STREAM_KEY=$(cat ~/.twitch_key)

avconv \
-f x11grab -s $INRES -r "$FPS" -i :0.0 \
-vcodec libx264 -s $OUTRES \
-f libx264 "rtmp://twitch.tv/app/$STREAM_KEY"
