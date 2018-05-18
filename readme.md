# Power Shell Scripts 

 > The first _Install-Apps_ power shell script would install the below softwares on Windows Machine:
 - Notepad++
 - 7 Zip
 - WinScp
 - JDK 1.8.121

 > The second _download-zip_ script would download and unzip the installation for below softwares:
 - PLSQL Developer 18.1.0
 - Oracle Client 12C 64 bit 

All these softwares are downloaded and kept in S3 bucket as central repository.

## Steps to run the scripts:
    1.Run Windows Power Shell as administartor from the start menu of Windows.

    2.Set PowerShell's execution policy to enable running of Power Shell Scipt by entering below command : 
      Set-ExecutionPolicy RemoteSigned
    
    3.Copy both the scripts at some location.
    
    4.In Power Shell window traverse to the file location of your scripts.Say if the files are saved in Scripts folder under Documents then traverse to C:\Users\UserName\Documents\Scripts>
    
    5.First run the Install-Apps.ps1 script by typing .\Install-Apps.ps1
    This script would be executed in 10 mins.
    
    6. Follow the same step 5 for running the download-zip.ps1 script. This script might take long time due to large zip files.

    7. To set environment variable for JAVA open cmd and type below command :
    setx JAVA_HOME "C:\Program Files\Java\jdk1.8.0_171
 
    