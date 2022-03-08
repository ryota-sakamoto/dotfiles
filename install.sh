#!/bin/bash

set -eux

TOOLS=`cat requirements`
SCRIPT_FILES="./script/*"

for tool in $TOOLS
do
    which $tool >> /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "You should be install \"$tool\""
    fi
done

for f in $SCRIPT_FILES
do
    bash $f
done
