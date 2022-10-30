write-host "AIB customization installing chrome"
try {
    Start-Process -filepath "C:\apps\ChromeSetup.exe" -Wait -ErrorAction Stop 
      write-host "chrome installed successfully"
    }
catch {
    $ErrorMessage = $_.Exception.message
    write-host "Error installing chrome: $ErrorMessage"
}
write-host "AIB customization Teams installation done."

write-host "AIB customization installing chrome"
try {
    Start-Process -filepath "C:\apps\MSTeamsSetup_c_l_.exe" -Wait -ErrorAction Stop 
      write-host "Teams installed successfully"
    }
catch {
    $ErrorMessage = $_.Exception.message
    write-host "Error installing Teams: $ErrorMessage"
}
write-host "AIB customization Teams installation done."
