
function Reset-Profile {

  @( $Profile.CurrentUserAllHosts ) | foreach-object {

    if(Test-Path $_){ . $_ }

  }    

}

export-modulemember -function Reset-Profile


set-alias -name .. -value cd..
export-modulemember -alias ..