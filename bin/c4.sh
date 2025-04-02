#!/bin/bash
# By Chey Rotana
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
echo "operation succeed"

cd ~/Os-project-main/bin
bash log_action.sh "Checked disk usage of ~/$dir"
    
