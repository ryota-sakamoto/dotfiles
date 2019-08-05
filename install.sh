#!/bin/bash

for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -sf "$(pwd)"/"$f" "$HOME"/"$f"
    echo "$HOME"/"$f"
done

ln -sf /root/dotfiles/fish /root/.config
