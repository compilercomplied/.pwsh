
function emacs 
{
  param( [Parameter(ValueFromRemainingArguments)] $unbound )
  $command="C:\Program Files\Emacs\emacs-28.0.50-snapshot\bin\emacs.exe";
  start-process -windowstyle hidden $command @unbound
}
export-modulemember -function emacs