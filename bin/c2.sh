#!/bin/bash
# By Tong Vorak
read -p "Enter file or directory to backup: " src
if [ ! -e "$src" ]; then
    echo "Error: ~/$src not found"
    return
fi
read -p "Enter backup location: " dest
if [ ! -e "$dest" ]; then
    echo "Error: ~/$dest not found"
    return
    if [ ! -d "dest" ]; then
    echo "Error: ~/$dest is not a directory"
    fi
fi
cp -r "$src" "$dest"
echo "operation succeed"
cd ~/Os-project-main/bin
echo "back to ~/Os-project-main/bin"
bash log_action.sh "Backed up ~/$src to ~/$dest"
