#!/bin/bash
# By Chey Rotana
read -p "Enter directory: " dir
if [ ! -e "$dir" ]; then
    echo "Error: ~/$dir not found"
    return
    if [ ! -d "$dir" ]; then
    echo "Error: ~/$dir is not a directory"
    fi
fi
count=$(find "$dir" -type f | wc -l)
echo "Number of files: $count"
echo "operation succeed"

cd ~/bin
echo "back to ~/bin"
bash log_action.sh "Counted $count files in ~/$dir"