#!/bin/sh
git clone https://msonnabaum@github.com/msonnabaum/rage-reducing-dotfiles.git
ls rage-reducing-dotfiles/| while read i; do cp "${i}" ~/.${i}; done
