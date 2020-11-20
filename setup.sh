#!/bin/bash

# setup
rm -rf ~/.vim/autoload
rm -rf ~/.vim/plugged

# download plugin manager
echo "STEP 1: download plugin manager"
curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "-- DONE --"

# install vim plugins
echo
echo "STEP 2: install vim plugins"
vim -E -s -u ".vimrc" +PlugInstall +qall
echo "-- DONE --"

echo
echo "VIM SETUP COMPLETE :)"

exit 0

