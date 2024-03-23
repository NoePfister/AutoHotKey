#SingleInstance, Force


f12::



run f12_modifiers.ahk

return


;F10




f10::


run f10_modifiers.ahk

return






f9::



if(f9_activated == True){

    DetectHiddenWindows, On
    SetTitleMatchMode, 2
    WinClose, f9_modifiers.ahk


    global f9_activated
    ToolTip, f9 Deaktiviert
    f9_activated := False
    Sleep, 1700
    ToolTip
}

else{

    global f9_activated


    Run, f9_modifiers.ahk

    ToolTip, f9 Aktiviert
    f9_activated := True
}

return

