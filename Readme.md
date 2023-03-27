## Script for backing up of Integration server files.

This script is a bash script that creates a backup of the webMethods Integration Server files. The script sets the backup directory, creates the backup directory if it doesn't exist, and sets the backup file name with the current date and time. The script then uses the tar command to create a compressed archive of the Integration Server files and saves the backup file to the backup directory. 

Finally, the script verifies whether the backup was successful by checking the exit status of the tar command and prints a message indicating whether the backup was successful or not.

The script assumes that the Integration Server files are located in the directory /opt/softwareag/IntegrationServer and that the version of webMethods being used is 10.11. If these assumptions are not true for your setup, you will need to modify the script accordingly.

#### To run this script, you can follow these steps:

1. Open a terminal window.

2. Navigate to the directory where the script is saved.

3. Make the script executable using the command: chmod +x script_name.sh (replace script_name.sh with the actual name of the script).

4. Execute the script using the command:
```bash
./script_name.sh
```

(replace script_name.sh with the actual name of the script).

5. After executing the script, it will create a backup of the Integration Server files in the backup directory specified in the script. The script will print a message indicating whether the backup was successful or not.