#!/bin/sh

echo "~~~~~~~~~~ TESTING ~~~~~~~~~~"
DIR="test"
BASEDIR=$PWD
TARGET="$BASEDIR/.."
ls | grep "^problem" | sort -V | while read -r PROB; do
    echo "[$PROB]"
    echo "\t--> building"
    cd $BASEDIR/$PROB && pdflatex $PROB.tex > /dev/null && pdflatex $PROB.tex > /dev/null
    echo "\t--> copying"
    cd $BASEDIR/$PROB && cp $PROB.pdf $TARGET
    echo "\t--> done"
done
echo "BUILD & COPY DONE!"