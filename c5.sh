#!/bin/bash
# By Mony Meakputsotheara
function c5() {
    cd ~
    echo "Current diretory: $(pwd)" 
    read -p "Enter directory to search in: " dir
    if [ ! -e "$dir" ]; then
        echo "Error: $dir not found"
        return
        if [ ! -d "$dir" ]; then
            echo "Error: $dir is not a directory"
            return
        fi
    fi
    read -p "Enter filename or extension: " pattern
    find "$dir" -name "$pattern"
    return
}

echo "executing c5"
c5