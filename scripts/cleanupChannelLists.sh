#!/usr/bin/env bash
#
#  What this script does?
#  just spits yt channel id in cleaned sorted a-z order
#

clear
for i in $(sed 's/^\///g' $1 | sort -ui);do
	echo "youtube.com##a[href^=\"/"$i"\"]:upward(ytd-channel-renderer,ytd-rich-item-renderer,ytd-show-renderer,ytd-playlist-renderer,ytd-video-renderer,ytm-rich-item-renderer):remove()"
done