#!/bin/bash
# By Tong Vorak
function c2() {
    cd ~
    echo "Current diretory: $(pwd)" 
    read -p "Enter file or directory to backup: " src
    if [ ! -e "$src" ]; then
        echo "Error: $src not found"
        return
    fi
    read -p "Enter backup location: " dest
    if [ ! -e "$dest" ]; then
        echo "Error: $dest not found"
        return
        if [ ! -d "dest" ]; then
        echo "Error: $dest is not a directory"
    fi
    cp -r "$src" "$dest"
    return
}

echo "executing c2"
c2