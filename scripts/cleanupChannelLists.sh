#!/usr/bin/env bash
#
#  What this script does?
#  just spits yt channel id in cleaned sorted a-z order
#  Warning: the output cannot be piped to other programs because it uses \e modification thingy
#

echo Sorting...
parsedInput="$(LC_ALL=C sort -ui $1)"
clear
echo "$parsedInput" > $1
echo -n "youtube.com##"
for i in $(echo "$parsedInput" | sed 's/^\///g');do
	echo -n 'a[href^="/'$i'"],'
done
echo -e "\e[D:upward(ytd-channel-renderer,ytd-rich-item-renderer,ytd-show-renderer,ytd-playlist-renderer,ytd-video-renderer,ytm-rich-item-renderer):remove()"