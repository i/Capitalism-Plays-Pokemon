#!/bin/bash

echo "music:default"
echo "message1:Welcome to custom made level!"
echo "NNN@N"
echo "NN  N"
echo "NN           Q  "
echo "NN NNN    NNNNNN" 
#jp2a $1 | sed 's/[^\.]/N/g' | sed 's/\./ /g'
jp2a $1 | sed "s/[^\.\: \"';,]/N/g" | sed "s/[\.\"'\:;,]/ /g" | sed 's/^/NN  NN/'
echo "name:Custom"
