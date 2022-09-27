#!/usr/bin/env bash
#
#  What this script does?
#  just spits yt channel id in cleaned sorted a-z order
#  Warning: the output cannot be piped to other programs because it uses \e modification thingy
#

clear
echo -n "youtube.com##"
for i in $(sed 's/^\///g' $1 | sort -ui);do
	echo -n 'a[href^="/'$i'"],'
done
echo -e "\e[D:upward(ytd-channel-renderer,ytd-rich-item-renderer,ytd-show-renderer,ytd-playlist-renderer,ytd-video-renderer,ytm-rich-item-renderer):remove()"