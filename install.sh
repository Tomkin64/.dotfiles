#!/bin/bash
sudo apt install tmux vim lnav curl git zsh htop strace --yes
mkdir -p ~/.cache/zsh
touch ~/.cache/zsh/history
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux-conf ~/.tmux.conf
ln -s ~/.dotfiles/vimrc-install ~/.vimrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
rm -f ~/.vimrc
ln -s ~/.dotfiles/vimrc ~/.vimrc
chsh -s /usr/bin/zsh

