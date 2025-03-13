#!/bin/bash

#outlocation=$(mktemp -d /home/galaxy/galaxy/database/files/XXXXXX)
outlocation=$(mktemp -d)
SCRIPTDIR=$(dirname "$(readlink -f "$0")")

python $SCRIPTDIR"/flash_wrapper.py" -i $1 -of $outlocation -t $4 -d $5 -f $6 -m $7 -x $8 -M $9
mv $outlocation"/log.log" $3
mv $outlocation"/merged.zip" $2
rm -rf $outlocation
