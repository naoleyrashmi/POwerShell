$url = "https://s3.amazonaws.com/softwares-powershell/winx64_12102_client.zip"
$output = "C:\Softwares\winx64_12102_client.zip"
$destination = "C:\Softwares\Oracle-Client\"
echo "Downloading zip file"
Invoke-WebRequest -Uri $url -OutFile $output  
echo "Unzipping"
& "c:\program files\7-zip\7z.exe" x $output -o"$destination" -y
$url1 = "https://s3.amazonaws.com/softwares-powershell/sqldeveloper-18.1.0.095.1630-x64.zip"
$output = "C:\Softwares\sqldeveloper-18.1.0.095.1630-x64.zip"
$destination = "C:\Softwares\sqldeveloper\"
echo "Downloading zip file"
Invoke-WebRequest -Uri $url1 -OutFile $output  
echo "Unzipping"
& "c:\program files\7-zip\7z.exe" x $output -o"$destination" -y



