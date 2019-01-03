#! /bin/bash

cd ~
mkdir -pv qrux-dotfiles
cd qrux-dotfiles

#wget https://raw.githubusercontent.com/qrux/dotfiles/master/bash_profile
#wget https://raw.githubusercontent.com/qrux/dotfiles/master/vimrc

curl https://raw.githubusercontent.com/qrux/dotfiles/master/bash_profile -o bash_profile
curl https://raw.githubusercontent.com/qrux/dotfiles/master/vimrc -o vimrc

if [ ! -e ~/.profile ] ; then
	mv bash_profile ~/.profile
elif [ -e ~/.bashrc ] ; then
	cat bash_profile >> ~/.bashrc
else
	cp -v bash_profile ~/.bashrc
fi

cp -v vimrc ~/.vimrc
mkdir -pv ~/bin
cd ~/bin

_SYSTEM=$(uname -s)
if [ "Darwin" = $_SYSTEM ] ; then
	#wget https://raw.githubusercontent.com/qrux/dotfiles/master/bin/darkdock

	curl https://raw.githubusercontent.com/qrux/dotfiles/master/bin/darkdock -o darkdock
	curl https://raw.githubusercontent.com/qrux/dotfiles/master/bin/mac-set-hostname -o mac-set-hostname
fi

chmod 0700 *
