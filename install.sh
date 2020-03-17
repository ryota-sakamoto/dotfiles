#!/bin/bash

for app in `cat requirements`
do
    which $app >> /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "You should be install \"$app\""
    fi
done

for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -sf "$(pwd)"/"$f" "$HOME"/"$f"
done

ln -sf "$(pwd)"/fish "$HOME"/.config

mkdir -p "$HOME"/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm "$HOME"/.tmux/plugins/tpm
