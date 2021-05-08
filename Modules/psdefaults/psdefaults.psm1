$PSDefaultParameterValues["Out-File:Encoding"] = "utf8"

# bash-like tab completion
Set-PSReadlineKeyHandler -Key Tab -Function Complete