
# ------------------------------------------------------------------------------
# --- Bootstrap ----------------------------------------------------------------
# ------------------------------------------------------------------------------

#region Setup
$PWSH_DIR = join-path -path $HOME -childpath ".pwsh" 
[environment]::SetEnvironmentVariable("PWSH_DIR", $PWSH_DIR);


# register location for custom pwsh modules ------------------------------------
$PWSH_MODULES = join-path -path $PWSH_DIR -childpath "Modules" 
$__currentPWSHModules = 
  [Environment]::GetEnvironmentVariable("PSModulePath")

[Environment]::SetEnvironmentVariable(
  "PSModulePath", 
  $__currentPWSHModules + [System.IO.Path]::PathSeparator + $PWSH_MODULES
)
# ------------------------------------------------------------------------------
#endregion Setup


#region Bootstrap
import-module psdefaults
import-module psprofile
import-module system
import-module apps

import-module psreadline
import-module oh-my-posh
set-poshprompt -theme powerline
#endregion Bootstrap