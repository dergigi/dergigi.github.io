#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'Usage: scrape.sh URL'
    exit 1
fi

readability-cli $1 > scraped.html
pandoc -f html -t markdown scraped.html > markdown.md
sed -i'' -- 's/<div>//g' markdown.md
sed -i'' -- 's/<\/div>//g' markdown.md
sed -i'' -E -- 's/^::+.*$//g' markdown.md
sed -i'' -E -- 's/\[(.+)\]\{.+\}/\1/g' markdown.md
sed -i'' -E -- 's/^>(.+) --- (.+)$/\1\n>\n> <cite>\2<\/cite>/g' markdown.md
cat -s markdown.md > markdown-clean.md
rm -v scraped.html
rm -v markdown.md

echo "Remember to double-check! HEADLINES MIGHT BE MISSING!"
