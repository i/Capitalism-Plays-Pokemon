#! /bin/bash
TOPXY="$1,$2"
INRES="1280x720"
OUTRES="852x480"
FPS="30"
QUAL="medium"
STREAM_KEY="live_57524215_7uhYJzNOoU7NfCpnjmguUF17tapiTA"
avconv \
-f x11grab -s $INRES  -r "$FPS" -i :0.0+$TOPXY \
-f alsa -ac 2 -i pulse \
-vcodec libx264 -s $OUTRES -preset $QUAL \
-acodec libmp3lame -ar 44100 -threads 4 -qscale 3 -b 712000  -bufsize 512k \
-f flv "rtmp://live.justin.tv/app/$STREAM_KEY"
