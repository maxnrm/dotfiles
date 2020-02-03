#!/bin/bash
# function to install smthng from apt if its not installed
function install () {
        if which $1
        then
                echo "$1 installed"
        else
                apt install $1      
        fi
}

#constants
readonly CURDIR=$PWD
readonly PLUGINS="/home/maxim/.vim/pack/plugins/start"
readonly INDENT="/home/maxim/.vim/indent"
echo $CURDIR $PLUGINS

# install dotfiles
cd ~/dotfiles/
cp .vimrc .bashrc ~/
mkdir -p $PLUGINS
mkdir $INDENT
cd $PLUGINS

#install vim extensions
if [ -d $PLUGINS ]
then
	git clone git@github.com:jiangmiao/auto-pairs.git
	git clone git@github.com:mattn/emmet-vim.git
	git clone git@github.com:altercation/vim-colors-solarized.git
    git clone git@github.com:Konfekt/FastFold.git
    git clone git@github.com:tmhedberg/SimpylFold.git
    git clone git@github.com:maralla/completor.vim.git
    pip3 install jedi
fi

#install vim indent files
if [ -d $INDENT  ]
then
        cd $INDENT
        curl -LO 'https://raw.githubusercontent.com/vim-scripts/indentpython.vim/master/indent/python.vim'
fi

cd $CURDIR 
echo $'\n\n\n'
echo "vim extensions installed:"
ls $PLUGINS
echo "dotfiles installed:"
ls ~/.bashrc ~/.vimrc
echo $'\n\n\n'
#TODO unset const
