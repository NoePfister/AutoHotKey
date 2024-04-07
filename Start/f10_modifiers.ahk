;THIS SCRIPT IS INTENDED TO BE RUN BY THE MAIN SCRIPT AND EXECUTE 1 COMMAND BEFORE IT STOPS THE PROCESS
;THE SCRIPT EXECUTES MULIPLE SEQUENZES OF SHORTCUTS AND INPUTS

#SingleInstance, Force
; Only allow 1 instance of this script to be running

#UseHook
;Prevent the Function to call itself

SetWorkingDir, %A_ScriptDir%

; Open or focus chrome and open a new Tab
t:: NewChromeTab()

; Open or focus chrome and open a new tab and closes all curently open tabs
s:: OpenChromeSaveMode()

; send an arrow (" -> ")
a:: SendArrow()

; send an indent ("    - ")
i:: SendIndent()

; in files create a new folder and type in the date
f:: CreateNewFolderWithDate()

; send the current date("06_04_2024_")
d:: SendDate()

NewChromeTab(){
    if WinExist("ahk_exe chrome.exe")
        WinActivate ; Activate the window found above
    else
        Run C:\Program Files\Google\Chrome\Application\chrome.exe

    Send, {CtrlDown}t{CtrlUp}
    ExitApp, 0
    Return
}

OpenChromeSaveMode(){
    if WinExist("ahk_exe chrome.exe")
        WinActivate ; Activate the window found above
    else
        Run C:\Program Files\Google\Chrome\Application\chrome.exe

    Tooltip "Waiting for chrome to load."
    while ErrorLevel = 1
    {
        ImageSearch, ix, iy, 0, 0, 300, 300, %A_ScriptDir%\pictures\google_reload_button
        Sleep, 5
    }

    Send, {CtrlDown}1{CtrlUp}
    

    while WinExist("ahk_exe chrome.exe"){
        Send, {CtrlDown}w{CtrlUp}
    }

    if WinExist("ahk_exe chrome.exe")
        WinActivate ; Activate the window found above
    else
        Run C:\Program Files\Google\Chrome\Application\chrome.exe
    

    ExitApp, 0 
    Return
}

SendArrow(){
    Send {Space}->{Space}
    ExitApp, 0
    Return
}

SendIndent(){
    Send {Space}{Space}{Space}{Space}-{Space}
    ExitApp, 0
    Return
}

CreateNewFolderWithDate(){
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
}

SendDate(){
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
}