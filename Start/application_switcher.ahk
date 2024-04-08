#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

custom = Discord.exe

^Esc:: ExitForce()

^XButton1:: EditCustom()
^Insert:: EditCustom()

XButton1:: SwitchToCustom()
Insert:: SwitchToCustom()

XButton2:: SwitchToFiles()



Home:: SwitchToChrome()
PgUp:: SwitchToOneNote()
PgDn:: SwitchToWhatsApp()
End:: SwitchToLastOpen()

SwitchToChrome(){
    if WinExist("ahk_exe chrome.exe")
        WinActivate
    Else
        run chrome.exe
}

SwitchToOneNote(){
    if WinExist("ahk_exe ONENOTE.EXE")
        WinActivate
    Else
        run ONENOTE.EXE
}

SwitchToWhatsApp(){
    if WinExist("ahk_exe ApplicationFrameHost.exe")
        WinActivate
    Else
        run ApplicationFrameHost.exe
}

SwitchToLastOpen(){
    Send {LAlt Down}{Tab} 
    KeyWait, LWin ; Wait to release left Win key
    Send {LAlt Up} ; Close switcher on hotkey release
}

SwitchToCustom(){
    global custom
    if WinExist("ahk_exe " . custom)
        WinActivate
    Else
        run custom
}

SwitchToFiles(){
    if WinExist("ahk_exe Files.exe")
        WinActivate
    Else
        run Files.exe
}

EditCustom(){
    global custom
    WinGet, Path, ProcessPath, A
    ; MsgBox, %Path%
    custom = %Path%

    Tooltip, set %custom% as the custom window to switch to

    SwitchToCustom()

    sleep 1000
    tooltip
}

ExitForce(){
ToolTip
ExitApp, 0
}