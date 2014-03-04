#!/bin/bash pactl
load-module module-null-sink sink_name=mix
pactl load-module module-loopback sink=mix
pactl load-module module-loopback sink=mix
