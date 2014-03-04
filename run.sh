INRES="1366x768" # input resolution
FPS="24" # target FPS
QUAL="fast"  # one of the many FFMPEG preset
URL="rtmp://live-jfk.twitch.tv/app/live_57524215_7uhYJzNOoU7NfCpnjmguUF17tapiTA
" #flashver=FMLE/3.0\20(compatible;\20FMSc/1.0)"

ffmpeg -f x11grab -s "$INRES" -r "$FPS" -i :0.0 \                              │···
-f alsa -f mp3 -ac 2 -vcodec libx264 -crf 30 -preset "$QUAL" -s "852x480" \
-acodec libmp3lame -ab 96k -ar 44100 -threads 0 -pix_fmt yuv420p \
-f flv "$URL"
