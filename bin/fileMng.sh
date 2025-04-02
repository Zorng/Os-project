#!/bin/bash
# By Lim Ieangzorng

echo "Welcome to the File Management Script!"
while (true); do 

    cd ~
    echo "========================="
    echo "current working directory: ~"    
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
            bash c1.sh
            ;;
        2)
            bash c2.sh
            ;;
        3)
            bash c3.sh
            ;;
        4)
            bash c4.sh
            ;;
        5)
            bash c5.sh
            ;;
        6)
            bash c6.sh
            ;;
        7)
            echo "Exiting..."
            cd ~/Os-project-main/bin
            bash log_action.sh "Exited the script"
            exit 0
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
done
