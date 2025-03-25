#!/bin/bash
# By Mony Meakputsotheara
function c6() {
    cd ~
    echo "Current diretory: $(pwd)" 
    read -p "Enter file or directory to compress: " target   
    if [ ! -e "$target" ]; then
        echo "Error: $target not found"
        return
    fi
    zip -r "${target}.zip" "$target"
    return
}

echo "executing c6"
c6