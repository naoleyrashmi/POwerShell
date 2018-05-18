$source = 'C:\Softwares' 
 
If (!(Test-Path -Path $source -PathType Container)) {New-Item -Path $source -ItemType Directory | Out-Null} 
 
$packages = @( 
@{title='7zip Extractor';url='https://s3.amazonaws.com/softwares-powershell/7z920-x64.msi';Arguments=' /qn';Destination=$source}, 
@{title='Notepad++ 7.5.6';url='https://s3.amazonaws.com/softwares-powershell/npp.7.5.6.Installer.exe';Arguments=' /Q /S';Destination=$source} 
@{title='WinScp 5.13.1';url='https://s3.amazonaws.com/softwares-powershell/WinSCP-5.13.1-Setup.exe';Arguments=' /VERYSILENT';Destination=$source} 
@{title='JDK 1.8.121';url ='https://s3.amazonaws.com/softwares-powershell/jdk-8u171-windows-x64.exe';Arguments= ' /qn';Destination=$source}) 
 
 
foreach ($package in $packages) { 
        $packageName = $package.title 
        $fileName = Split-Path $package.url -Leaf 
        $destinationPath = $package.Destination + "\" + $fileName 
 
If (!(Test-Path -Path $destinationPath -PathType Leaf)) { 
 
    Write-Host "Downloading $packageName" 
    $webClient = New-Object System.Net.WebClient 
    $webClient.DownloadFile($package.url,$destinationPath) 
    } 
    }
 
 
#Once we've downloaded all our files lets install them. 
foreach ($package in $packages) { 
    $packageName = $package.title 
    $fileName = Split-Path $package.url -Leaf 
    $destinationPath = $package.Destination + "\" + $fileName 
    $Arguments = $package.Arguments 
    Write-Output "Installing $packageName" 
 
 
Invoke-Expression -Command "$destinationPath $Arguments" 
}

