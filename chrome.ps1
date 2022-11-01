write-host "AIB customization installing chrome"
try {
    Start-Process -filepath "c:\apps\ChromeSetup.exe" -Wait -ErrorAction Stop 
 

      write-host "chrome installed successfully"
    }

