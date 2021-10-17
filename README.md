# LastChaos Updater Helper <img align="left" src="https://user-images.githubusercontent.com/5092697/136836589-b655f88e-f67e-433d-bc2a-12c0534e05d9.png" width="150px">

Helper for make Updates for LastChaos client.<br/>
File Watcher.<br/>
FTP Upload.<br/>
Database Update.<br/>

# Quick Start

# Information / Features / Notes
* text

# Workflow / How to use / How it work
### Stage 1
*   Start File watcher.
### Stage 2
*   Replicates the structure of detected Files / Folders to a Temporary folder.
### Stage 3
*   ```Step 1 Test connection to FTP Server.```
*   Step 2 Test connection to MySQL Database.
*   Step 3 Find Patches folder on FTP Server.
*   Step 4 Find Version file(version.txt) on patches folder.
*   Step 5 Download Version file.
*   Step 6 Does the ZIP with the files in the Temporary folder.
*   Step 7 Upload ZIP file to FTP server.
*   Step 8 Upload new Version file to FTP server.
*   Step 9 Update min and max version on t_clientversion Database.


# Pics
![main](https://user-images.githubusercontent.com/5092697/137606993-a21aa429-cc91-4a85-9177-067eee507487.jpg)
![settings](https://user-images.githubusercontent.com/5092697/137606995-fd6097fa-e5ae-40de-8f3c-b44b91ba1ad8.jpg)
