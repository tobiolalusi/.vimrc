#!/bin/bash

# setup
rm -rf ~/.vim/autoload
rm -rf ~/.vim/plugged

step_number=0
done_message="-- DONE --"

# download plugin manager
echo "STEP $((++step_number)): download plugin manager"
curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo $done_message

# install vim plugins
echo
echo "STEP $((++step_number)): install vim plugins"
vim -E -s -u ".vimrc" +PlugInstall +qall
echo $done_message

# setup YCM
echo
echo "STEP $((++step_number)): setup YouCompleteMe"
(cd ~/.vim/plugged/YouCompleteMe && python3 install.py --all)
echo $done_message

echo
echo "---------------------------"
echo "-  VIM SETUP COMPLETE :)  -"
echo "---------------------------"

exit 0

