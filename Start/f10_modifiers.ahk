#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%






t:: 
    if WinExist("ahk_exe chrome.exe")
            WinActivate  ; Activate the window found above
    else
        Run C:\Program Files\Google\Chrome\Application\chrome.exe

    Send, {CtrlDown}t{CtrlUp}
ExitApp, 0
Return

s:: 
    if WinExist("ahk_exe chrome.exe")
            WinActivate  ; Activate the window found above
    else
        Run C:\Program Files\Google\Chrome\Application\chrome.exe

    Send, {CtrlDown}t{Tab}w{CtrlUp}


ExitApp, 0    
Return




o::

    if WinExist("ahk_exe olk.exe")
        WinActivate  ; Activate the window found above
    else
        Run C:\Program Files\WindowsApps\Microsoft.OutlookForWindows_1.2024.223.300_x64__8wekyb3d8bbwe\olk.exe

    Sleep, 3000

    Send, {CtrlDown}n{CtrlUp}
ExitApp, 0xt
Return

a:: 
    Send {Space}->{Space}
ExitApp, 0
Return

i:: 
    Send {Space}{Space}{Space}{Space}-{Space}
ExitApp, 0
Return
