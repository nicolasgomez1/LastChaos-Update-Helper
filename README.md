# LastChaos Update Helper (WIP)<img align="left" src="https://user-images.githubusercontent.com/5092697/138568472-9221043e-f04d-46dc-8835-5d6e4a17ed0a.png" width="150px">

Helper for make Updates for LastChaos client.<br/>
File Watcher.<br/>
FTP Upload.<br/>
Database Update.<br/>

# Quick Start
coming soon

# Warning
* untested application, possible problems due to unforeseen or untested situations.

# Workflow / How it work (README WIP)
### Stage 1 / Start
*   Detect changes on defined folder and print file/folder path on grid for nexts stages.
### Stage 2
*   Replicates the structure of detected Folders/Files to a Temporary folder.
### Stage 3
*   Step 1 Test connection to FTP Server.
*   Step 2 Test connection to MySQL Database.
*   Step 3 Find Patches folder on FTP Server.
*   Step 4 Find Version file(version.txt) on patches folder.
*   Step 5 Download Version file.
*   Step 6 Does the ZIP with the folders/files in the Temporary folder.
*   Step 7 Upload ZIP file to FTP server.
*   Step 8 Upload new Version file to FTP server.
*   Step 9 Update __a_min__ and __a_max__ version on __t_clientversion__ Database.


# Pics
![main](https://user-images.githubusercontent.com/5092697/137606993-a21aa429-cc91-4a85-9177-067eee507487.jpg)
![settings](https://user-images.githubusercontent.com/5092697/137606995-fd6097fa-e5ae-40de-8f3c-b44b91ba1ad8.jpg)
