#!/usr/bin/env bash

### install xcode
./install-xcode.sh

### install brew things
./install-brew.sh

### install vim plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

### setup bash
./setup-bash.sh

### OSX settings
sh ./.macos

# python3 -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose
