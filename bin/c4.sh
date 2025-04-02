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
echo "------------------Result-------------------"
du -sh "$dir"
echo "-------------------------------------------"
echo "operation succeed"

cd ~/Os-project-main/bin
bash log_action.sh "Checked disk usage of ~/$dir"
    
