Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run Chr(34) & WshShell.SpecialFolders("Desktop") & "\mtaPriorityAffinity\script.bat" & Chr(34), 0
Set WshShell = Nothing