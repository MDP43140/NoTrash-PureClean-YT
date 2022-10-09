#!/usr/bin/env bash
cat ../BlacklistedChannels.txt \
 | grep '// --- | --- - (---) --- // A' --after-context=999999 \
 | grep '// --- | --- - (---) --- // B' --before-context=999999 \
 | sed 's/\/\/ --- \| --- - \(---\) --- \/\/ (A|B)//' \
 | grep -e '^W |' \
 | sed 's/^.*- (//' \
 | sed 's/).*$//' \
 | sort -ui