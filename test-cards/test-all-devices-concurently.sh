#!/bin/bash

DURATION=30
TYPE="wav"
WITH_PLUG=true

if [ $WITH_PLUG = true ]; then
    PLUG="plug:"
else
    PLUG=""
fi

rm -rf *.wav

echo
arecord -f S32_LE -t $TYPE  -D ${PLUG}12_left -r 8000 -d $DURATION -V mono 12_left.wav &
echo
arecord -f S32_LE -t $TYPE  -D ${PLUG}12_right -r 8000 -d $DURATION -V mono 12_right.wav & 
echo
arecord -f S32_LE -t $TYPE  -D ${PLUG}34_left -r 8000 -d $DURATION -V mono 34_left.wav &
echo
arecord -f S32_LE -t $TYPE  -D ${PLUG}34_right -r 8000 -d $DURATION -V mono 34_right.wav & 
echo
arecord -f S32_LE -t $TYPE  -D ${PLUG}56_left -r 8000 -d $DURATION -V mono 56_left.wav &
echo
arecord -f S32_LE -t $TYPE  -D ${PLUG}56_right -r 8000 -d $DURATION -V mono 56_right.wav & 
echo
arecord -f S32_LE -t $TYPE  -D ${PLUG}78_left -r 8000 -d $DURATION -V mono 78_left.wav &
echo
arecord -f S32_LE -t $TYPE  -D ${PLUG}78_right -r 8000 -d $DURATION -V mono 78_right.wav & 
echo

echo
echo