#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

custom1 = Discord.exe
custom2 = ONENOTE.exe

^Esc:: ExitForce()

^XButton1:: EditCustom1()
^Insert:: EditCustom1()

XButton1:: SwitchToCustom1()
Insert:: SwitchToCustom1()

XButton2:: SwitchToCustom2()
^XButton2:: EditCustom2()

sc029:: SwitchToCustom2()
^sc029:: EditCustom2()



Home:: SwitchToChrome()
PgUp:: SwitchToOneNote()
PgDn:: SwitchToFiles()
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

SwitchToCustom1(){
    global custom1
    if WinExist("ahk_exe " . custom1)
        WinActivate
    Else
        run custom1
}

SwitchToFiles(){
    if WinExist("ahk_exe Files.exe")
        WinActivate
    Else
        run Files.exe
}

EditCustom1(){
    global custom1
    WinGet, Path, ProcessPath, A
    ; MsgBox, %Path%
    custom1 = %Path%

    Tooltip, set %custom1% as the custom window to switch to

    SwitchToCustom1()

    sleep 1000
    tooltip
}

ExitForce(){
    ToolTip
    ExitApp, 0
}

EditCustom2(){
    global custom2
    WinGet, Path, ProcessPath, A
    ; MsgBox, %Path%
    custom2 = %Path%

    Tooltip, set %custom2% as the custom window to switch to

    SwitchToCustom1()

    sleep 1000
    tooltip
}

SwitchToCustom2(){
    global custom2
    if WinExist("ahk_exe " . custom2)
        WinActivate
    Else
        run custom2
}