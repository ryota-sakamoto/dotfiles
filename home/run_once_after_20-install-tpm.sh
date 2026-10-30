#!/bin/bash
# tmux plugin manager; inside tmux press prefix + I to install plugins
set -eu

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone --depth 1 https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi
