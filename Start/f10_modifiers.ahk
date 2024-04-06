#SingleInstance, Force
; Only allow 1 instance of this script to be running




; Open or focus chrome and open a new Tab
t:: 
    if WinExist("ahk_exe chrome.exe")
            WinActivate  ; Activate the window found above
    else
        Run C:\Program Files\Google\Chrome\Application\chrome.exe

    Send, {CtrlDown}t{CtrlUp}
ExitApp, 0
Return

; Open or focus chrome and open a new tab and close the currrent one (save Mode)
s:: 
    if WinExist("ahk_exe chrome.exe")
            WinActivate  ; Activate the window found above
    else
        Run C:\Program Files\Google\Chrome\Application\chrome.exe
    
    Sleep, 50
    Send, {CtrlDown}t{Tab}w{CtrlUp}


ExitApp, 0    
Return



; Buggy/doesnt work all the time
o::

    if WinExist("ahk_exe olk.exe")
        WinActivate  ; Activate the window found above
    else
        Run C:\Program Files\WindowsApps\Microsoft.OutlookForWindows_1.2024.223.300_x64__8wekyb3d8bbwe\olk.exe

    Sleep, 3000

    Send, {CtrlDown}n{CtrlUp}
ExitApp, 0
Return

; send an arrow
a:: 
    Send {Space}->{Space}
ExitApp, 0
Return

; send an indent
i:: 
    Send {Space}{Space}{Space}{Space}-{Space}
ExitApp, 0
Return

; in files create a new folder and type in the date
f::
    Send {CtrlDown}{ShiftDown}n{CtrlUp}{ShiftUp}
    Sleep 200
    FormatTime, day,, dd
    Send %day%
    Send _
    FormatTime, month,, MM
    Send %month%
    Send _
    FormatTime, year,, yyyy
    Send %year%
    Send _
ExitApp, 0
Return

; send the current date
d::
    FormatTime, day,, dd
    Send %day%
    Send _
    FormatTime, month,, MM
    Send %month%
    Send _
    FormatTime, year,, yyyy
    Send %year%
    Send _
ExitApp, 0
Return