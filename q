#! /bin/bash

cd ~
mkdir -pv qrux-dotfiles
cd qrux-dotfiles

wget https://raw.githubusercontent.com/qrux/dotfiles/master/bash_profile
wget https://raw.githubusercontent.com/qrux/dotfiles/master/vimrc

if [ -e ~/.bashrc ] ; then
	cat bash_profile >> ~/.bashrc
else
	cp -v bash_profile ~/.bashrc
fi

cp -v vimrc ~/.vimrc

mkdir -pv ~/bin
cd ~/bin

wget https://raw.githubusercontent.com/qrux/dotfiles/master/bin/darkdock

chmod 0755 *
