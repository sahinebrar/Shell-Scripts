#!/usr/bin
#it packs all the files in the given directory
DIRECTORY=$1
PACKEDFILENAME=$2
find $DIRECTORY -mtime -7 -ls | tar -czvf $PACKEDFILENAME --null -T -
