 # set regKey
 write-host 'AIB Customization: Set required regKey'
 New-Item -Path HKLM:\SOFTWARE\Microsoft -Name "Teams" 
 New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Teams -Name "IsWVDEnvironment" -Type "Dword" -Value "1"
 write-host 'AIB Customization: Finished Set required regKey'
 
  # install Teams
 write-host 'AIB Customization: Install MS Teams'
 $teamsURL = 'https://teams.microsoft.com/downloads/desktopurl?env=production&plat=windows&arch=x64&managedInstaller=true&download=true'
 $teamsMsi = 'Teams_windows_x64.msi'
 $outputPath = $c:\\apps\ + '\' + $teamsMsi
 Invoke-WebRequest -Uri $teamsURL -OutFile $outputPath
 Start-Process -FilePath msiexec.exe -Args "/I $outputPath /quiet /norestart /log teams.log ALLUSER=1 ALLUSERS=1" -Wait
 write-host 'AIB Customization: Finished Install MS Teams' 
