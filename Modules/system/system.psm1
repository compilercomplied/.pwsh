
function New-Notification
{
  param( [Parameter(ValueFromRemainingArguments)] $UnboundArgs )
  $__notif = join-path -path $PWSH_DIR -childpath "notification.png"
  new-burnttoastnotification -applogo $__notif -text $UnboundArgs
}
export-modulemember -function new-notification

function settings { start-process "ms-setttings:" }
export-modulemember -function settings


# --- Unix like ----------------------------------------------------------------
function sudo(){ Invoke-Elevated @args }
export-modulemember -function sudo
function which ($cmd) { get-command $cmd | select-object path }
export-modulemember -function which
# ------------------------------------------------------------------------------

set-alias n start-process
export-modulemember -alias n

set-alias winfetch pwshfetch-test-1
export-modulemember -alias winfetch

function trash { start shell:RecycleBinFolder; }
export-modulemember -function trash