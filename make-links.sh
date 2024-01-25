#!/usr/bin/env bash
set -e
cd ~
for i in config editrc gitconfig inputrc tmux.conf vim vimrc zshenv zshrc; do
	(set -x && rm -f .$i && ln -s profile/$i .$i)
done
