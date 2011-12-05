#!/bin/sh
git clone git://github.com/msonnabaum/rage-reducing-dotfiles.git
cd rage-reducing-dotfiles && ls | grep -v "install"| grep -v "README" | while read i; do cp "${i}" ~/.${i}; done

# crontab -e and visudo dropping me in nano? WHOA, fuck that.
update-alternatives --set editor /usr/bin/vim.basic
