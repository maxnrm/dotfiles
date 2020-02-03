#!/bin/bash
function install () {
        if which $1
        then
                echo "$1 installed"
        else
                apt install $1      
        fi
}

install i3
