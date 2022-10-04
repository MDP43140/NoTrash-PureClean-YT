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
#  PS: the file MUST contain "!BEGIN AUTO_PARSE" and "!END AUTO_PARSE" for the parser to work
#

clear
[ "$1" ] && FILE="$1" || FILE="../FILTER_SIMPLIFIED.css";
parsedFilter="$(
	cat $FILE \
	 | grep '!BEGIN AUTO_PARSE' --after-context=999999 \
	 | grep '!END AUTO_PARSE' --before-context=999999 \
	 | sed '/^!/d' \
	 | mawk '!(c[$0]++)' \
	 | grep -ve "^[[:space:]]*$"
)"


echo -n /
if [ "$2" ];then
	echo "$parsedFilter" \
	 | mawk '{gsub(/^[ \t]+|[ \t]+$/,"");printf $0}' \
	 | sed 's/^|//'
else
	echo "$parsedFilter"
fi
#cant put comment above that piped command, heres what it does:
#- Remove tabs (at start & end) and newlines)
#- Remove | at the start after / to prevent buggy crap
echo -e "/ui\n\n"