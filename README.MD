# Mini Project: File and Directory Management Program

**CADT GEN-10 SE GROUP-4**

Lecturer: Chea Chandara

Team members:
- Lim Ieangzorng
- Chey Rotana
- Tong Vorak
- Mony Meakputsotheara

***!!THE PROGRAM ONLY WORKS ON MACHINE THAT CAN RUN BASH SCRIPT!!***

## How to install
**Replace 'your-username' in path with your actual pc username"
- Download the zip https://github.com/Zorng/Os-project/archive/refs/heads/main.zip
- Unzip the downloaded zip in `/home/your-username` for **Linux**, in `/Users/your-username` for **Mac**, in `C:\Users\your-username` for **Windows**
- add program to path via command <br>
  - For mac, run the command:  `echo "export PATH=\"\$PATH:/Users/your-username/Os-project-main/bin\"" >> ~/.zshrc` . Then, run: `source ~/.zshrc `
  - For Windows, run the command: `echo "export PATH=\"\$PATH:/c/Users/your-username/Os-project-main/bin\"" >> ~/.bash_profile`. Then run: `source ~/.bash_profile`
  - For Linux, run the command: `echo "export PATH=\"\$PATH:/home/your-username/Os-project-main/bin\"" >> ~/.bash_profile`. Then run: `source ~/.bash_profile`
- grant permission to execute via command `chmod +x ~/Os-project-main/bin/*.sh`

## How to run the program
- open terminal 
- run `fileMng.sh`

## Program Features

1. List all files and sub-directories with detailed information of a given directory or file.
2. Create backups of individual files and entire directories. <br>
    • Ask user input for the location of individual files or directories <br>
    • Ask user input for the location of backup
3. Count the number of files in a directory of a given directory
4. Display disk usage of a given directory.
5. Search for a file by name or extension of a given directory.
6. Compress the given files or directories.
7. Keep a log file of all actions performed by users in a file called script.log in the same directory where you run the program
