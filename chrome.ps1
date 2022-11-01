write-host "AIB customization installing chrome"
try {
    Start-Process -filepath "c:\apps\ChromeSetup.exe" -Wait -ErrorAction Stop 
      write-host "chrome installed successfully"
    }
catch {
    $ErrorMessage = $_.Exception.message
    write-host "Error installing chrome: $ErrorMessage"
}
write-host "AIB customization chrome installation done."
