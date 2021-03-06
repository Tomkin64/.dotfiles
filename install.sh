#!/bin/bash
sudo apt install tmux vim lnav curl git zsh htop strace --yes
mkdir -p ~/.cache/zsh
touch ~/.cache/zsh/history
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux-conf ~/.tmux.conf
ln -s ~/.dotfiles/vimrc-install ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
rm -f ~/.vimrc
ln -s ~/.dotfiles/vimrc ~/.vimrc
chsh -s /usr/bin/zsh
