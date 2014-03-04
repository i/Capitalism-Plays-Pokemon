
INRES="1366x768" # input resolution
FPS="15" # target FPS
QUAL="fast"  # one of the many FFMPEG preset
URL="rtmp://live-jfk.twitch.tv/app/live_57524215_7uhYJzNOoU7NfCpnjmguUF17tapiTA" #flashver=FMLE/3.0\20(compatible;\20FMSc/1.0)"

ffmpeg -f x11grab -s "$INRES" -r "$FPS" -i :0.0 \
  -f alsa -i hw:0,0 -ac 2 -vcodec libx264 -crf 30 -preset "$QUAL" -s "1280x720" \
  -acodec libmp3lame -ab 96k -ar 44100 -threads 0 -pix_fmt yuv420p \
  -f flv "./foo.flv"
