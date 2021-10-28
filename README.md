# LastChaos Update Helper<img align="left" src="https://user-images.githubusercontent.com/5092697/138696231-2e0a32cb-ead0-4f59-97d9-8adead41c31f.png" width="150px">

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
* Everything revolves around the version.txt file, the database versions are not relevant to the process of creating the update.

# Pics
![UpdateHelper](https://user-images.githubusercontent.com/5092697/138769026-f2458a7a-39c2-49a6-8e1b-945250a9c6e6.jpg)
![Settings](https://user-images.githubusercontent.com/5092697/138769030-5daef715-db29-4eac-b72a-09dacdfc89ec.jpg)
