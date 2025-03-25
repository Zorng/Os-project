#!/bin/bash
# By Tong Vorak
function c1() {
    cd ~
    echo "Current diretory: $(pwd)" 
    read -p "Enter the directory path: " dir
    if [ ! -e "$dir" ]; then
        echo "Error: $dir not found"
        return
    fi
    ls -l "$dir"
    return
}

echo "executing c1"
c1