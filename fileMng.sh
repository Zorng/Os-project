#!/bin/bash
# By Lim Ieangzorng
LOG_FILE="fileMngScript.log"

log_action() {
    echo "$(date) - $(whoami) - $1" >> "$LOG_FILE"
}

function c1() {
    read -p "Enter the directory path: " dir
    if [ ! -e "$dir" ]; then
        echo "Error: $dir not found"
        return
    fi
    ls -l "$dir"
    cd ~/bin
    echo "back to ~/bin"
    log_action "Listed files in ~/$dir"
}

function c2() {
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
    cd ~/bin
    echo "back to ~/bin"
    log_action "Backed up ~/$src to ~/$dest"
    return
}

function c3() {
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

    cd ~/bin
    echo "back to ~/bin"
    log_action "Counted $count files in ~/$dir"
    return
}

function c4() {
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

    cd ~/bin
    echo "back to ~/bin"
    log_action "Checked disk usage of ~/$dir"
    return
}

function c5() {

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

    cd ~/bin
    echo "back to ~/bin"
    log_action "Searched for $pattern in ~/$dir"
    return
}

function c6() {
    cd ~
    echo "Current diretory: $(pwd)" 
    read -p "Enter file or directory to compress: " target   
    if [ ! -e "$target" ]; then
        echo "Error: $target not found"
        return
    fi
    zip -r "${target}.zip" "$target"

    cd ~/bin
    echo "back to ~/bin"
    log_action "Compressed $target to ${target}.zip"
    return
}
echo "Welcome to the File Management Script!"

cd ~
echo "========================="
echo "current path from ~"    
echo "========================="

echo "Choose an option:"
echo "1. List all files and subdirectories with details"
echo "2. Create backups of files or directories"
echo "3. Count number of files in a directory"
echo "4. Display disk usage of a directory"
echo "5. Search for a file by name or extension"
echo "6. Compress files or directories"
echo "7. Exit"
read -p "Enter your choice: " choice


case $choice in
    1)  
        c1 
        ;;
    2)
        c2
        ;;
    3)
        c3
        ;;
    4)
        c4
        ;;
    5)
        c5
        ;;
    6)
        c6
        ;;
    7)
        echo "Exiting..."
        log_action "Exited the script"
        exit 0
        ;;
    *)
        echo "Invalid choice!"
        ;;
esac