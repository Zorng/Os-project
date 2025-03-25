#!/bin/bash
# By Chey Rotana
function c4() {
    cd ~
    echo "Current diretory: $(pwd)" 
    read -p "Enter directory: " dir
    if [ ! -e "$dir" ]; then
        echo "Error: $dir not found"
        return
        if [ ! -d "$dir" ]; then
            echo "Error: $dir is not a directory"
            return
        fi
    fi
    du -sh "$dir"
    return
}

echo "executing c4"
c4