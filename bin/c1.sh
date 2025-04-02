#!/bin/bash
# By Tong Vorak
read -p "Enter the directory path: " dir
if [ ! -e "$dir" ]; then
    echo "Error: $dir not found"
    return
fi
ls -l "$dir"
echo "operation succeed"
cd ~/Os-project-main/bin
bash log_action.sh "Listed files in ~/$dir"
