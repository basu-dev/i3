#!/bin/bash

NUM = ${2:-5}
case "$1" in 
	toggle) amixer sset Master toggle;;
	mute) amixer sset Master mute;;
	up) amixer sset Master $NUM%+;;
	down) amixer sset Master $NUM%-;;
esac 
pkill -RTMIN+1 i3blocks;
