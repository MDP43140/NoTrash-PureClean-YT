#!/usr/bin/env bash
#
#  What this script does?
#  It:
#  Grabs input from whatever file you give
#  - Remove duplicates,
#  - Remove comments (the one that begins with "!"),
#  - Remove tabs at start/end.
#  And print them.
#  Used to make cleaning lists in FILTER_SIMPLIFIED.css much easier
#
#  Usage:
#  createCleanedFilter.sh somerandomfile.txt <put some random stuff here if you want minified one-line version>
#
#  PS: somerandomfile.txt (usually) should look like this:```
#  ! Clickbait
#  ! ———————————————————————————————
#  [03:]+\s*A.?M
#  |tik[- ]?tok
#  |cap[- ]?cut
#  |byte[- ]?dance
#  ...
#  ...
#  ...
#  ! ———————————————————————————————
#  ! Other (not added to list yet)
#  ! ———————————————————————————————
#  |ome\.tv
#  |superstar
#  |idola
#  |(lagu|musik) (rohani|barat|pop)
#  |christ
#  ```
#

clear
echo -n /
if [ "$2" ];then
	mawk '!(c[$0]++)' $1 \
	 | sed '/^!/d' \
	 | mawk '{gsub(/^[ \t]+|[ \t]+$/,"");printf $0}' \
	 | sed 's/^|//'
else
	mawk '!(c[$0]++)' $1 | sed '/^!/d'
fi
#cant put comment above that piped command, heres what it does:
#- Remove dupe
#- Remove comment
#- Remove tabs (at start & end) and newlines)
#- Remove | at the start after / to prevent buggy crap
echo -e "/ui\n\n"