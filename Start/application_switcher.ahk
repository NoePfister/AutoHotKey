#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

XButton1:: SwitchToDiscord()
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

SwitchToDiscord(){
    if WinExist("ahk_exe Discord.exe")
        WinActivate
    Else
        run Discord.exe
}

SwitchToFiles(){
    if WinExist("ahk_exe Files.exe")
        WinActivate
    Else
        run Files.exe
}