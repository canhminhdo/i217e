#!/bin/sh

echo "~~~~~~~~~~ TESTING ~~~~~~~~~~"
DIR="test"
BASEDIR=$PWD
ls | grep "^problem[1-9]" | sort -V | while read -r PROB; do
    cd $BASEDIR/$PROB && ((ls | grep prob | sort -V) && (ls | grep lm | sort -V)) | while read -r FILE; do
        NAME=`echo $FILE | cut -d '.' -f1`
        if [[ "$NAME" =~ ^prob.*$ ]]; then
            echo "--> $PROB"
        else
            echo "\t--> $NAME"
        fi
        cafeobj -batch $FILE | grep "(true):Bool" > "$DIR/$NAME.out"
        diff "$DIR/$NAME.expected" "$DIR/$NAME.out"
        rm "$DIR/$NAME.out"
    done
done
echo "DONE!"