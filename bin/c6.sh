#!/bin/bash
# By Mony Meakputsothera
read -p "Enter file or directory to compress: " target   
if [ ! -e "$target" ]; then
    echo "Error: $target not found"
    return
fi
zip -r "${target}.zip" "$target"
echo "operation succeed"

cd ~/Os-project-main/bin
bash log_action.sh "Compressed $target to ${target}.zip"
