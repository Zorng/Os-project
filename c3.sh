#!/bin/bash
# By Chey Rotana
function c3() {
    cd ~
    echo "Current diretory: $(pwd)" 
    read -p "Enter directory: " dir
    if [ ! -e "$dir" ]; then
        echo "Error: $dir not found"
        return
        if [ ! -d "$dir" ]; then
        echo "Error: $dir is not a directory"
    fi
    count=$(find "$dir" -type f | wc -l)
    echo "Number of files: $count"
    return
}

echo "executing c3"
c3