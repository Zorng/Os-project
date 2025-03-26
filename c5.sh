#!/bin/bash
# By Mony Meakputsotheara
read -p "Enter directory to search in: " dir
if [ ! -e "$dir" ]; then
    echo "Error: ~/$dir not found"
    return
    if [ ! -d "$dir" ]; then
        echo "Error: ~/$dir is not a directory"
        return
    fi
fi
read -p "Enter filename or extension: " pattern
find "$dir" -name "$pattern"
echo "operation succeed"

cd ~/bin
echo "back to ~/bin"
bash log_action.sh "Searched for $pattern in ~/$dir"
