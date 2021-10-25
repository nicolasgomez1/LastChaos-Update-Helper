# LastChaos Update Helper (WIP)<img align="left" src="https://user-images.githubusercontent.com/5092697/138696231-2e0a32cb-ead0-4f59-97d9-8adead41c31f.png" width="150px">

Helps automate the process of creating an Update for the LastChaos game client.<br/>
File Watcher.<br/>
FTP Upload.<br/>
Database Update.<br/>

# Quick Start
coming soon

# Notes
* To avoid external problems, remember to give all the permissions to the ftp user. Verify that the defined path really exists, the application will not create folders.
* If the file 'version.txt' is missing, one will be automatically created with the value 0 by default.
* If the table 't_clientversion' is missing, it will be created automatically, the columns a_min and a_max will also be created. And they will be assigned 0 as the default value.

# Pics
![main](https://user-images.githubusercontent.com/5092697/137606993-a21aa429-cc91-4a85-9177-067eee507487.jpg)
![settings](https://user-images.githubusercontent.com/5092697/137606995-fd6097fa-e5ae-40de-8f3c-b44b91ba1ad8.jpg)
