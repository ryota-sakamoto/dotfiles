#!/bin/bash

for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -sf "$(pwd)"/"$f" "$HOME"/"$f"
done
