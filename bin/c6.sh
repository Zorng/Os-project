#!/bin/bash
# By Mony Meakputsothera
read -p "Enter file or directory to compress: " target   
if [ ! -e "$target" ]; then
    echo "Error: $target not found"
    return
fi
echo "------------------Result-------------------"
tar -czvf "${target}.tar.gz" "$target"
echo "operation succeed"
echo "-------------------------------------------"

cd ~/Os-project-main/bin
bash log_action.sh "Compressed $target to ${target}.tar.gz"
