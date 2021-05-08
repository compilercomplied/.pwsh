# powershell-profile

Useful links:
 - [PS Profile docs](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles)

## bootstrapping
Using `echo $PROFILE` should give current profile ($PROFILE.CurrentUserAllHosts).
It should be something like `$HOME/Documents/PowerShell/Profile.ps1`

Copy this in `$PROFILE` to hook custom configuration:
```
$__fc = [string]::join(
  [environment]::newline, 
  (get-content -path $HOME/.pwsh/bootstrap.ps1)
)
invoke-expression $__fc
```