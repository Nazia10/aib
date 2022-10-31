write-host "AIB customization installing Terraform"
try {
    Start-Process -filepath "C:\apps\terraform" -Wait -ErrorAction Stop 
      write-host "Terraform installed successfully"
    }
catch {
    $ErrorMessage = $_.Exception.message
    write-host "Error installing Terraform: $ErrorMessage"
}
write-host "AIB customization Terraform installation done."
