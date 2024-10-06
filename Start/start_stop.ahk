;THIS SCRIPT IS THE MAIN SCRIPT, THAT CONTROLS ALL THE OTHER SCRIPTS
;THIS SCRIPT IS INTENDED TO BE RUN ON STARTUP

#SingleInstance, Force
; Only allow 1 instance of this script to be running

SetWorkingDir, %A_ScriptDir%
SendMode Input

;Declare variables 
f9_activated = False

application_switcher_activated = False

mouse_speed = 1




;Esc is Capslock every time
Esc::CapsLock
CapsLock::Esc



; f12:: RunF12Script()

; f10:: RunF10Script()

; f9:: ToggleF9Script()

; f8:: toggleApplicationSwitcher()



ToggleF9Script(){
    global f9_activated
    ; When f9 is pressed, the f9_modifiers script gets toggeld
    if(f9_activated == True){
        ;if the script is already running, stop it
        DetectHiddenWindows, On
        SetTitleMatchMode, 2
        WinClose, f9_modifiers.ahk
        ; find the process and exit it

        f9_activated := False
        ;set the variable to false
        ToolTip, f9 Deaktiviert
        ;show the tooltip, that the script is deactivated
        Sleep, 1700
        ;wait for 1.7 seconds and then remove the tooltip
        ToolTip
    }

    else{
        ;if the script isnt running, run it

        Run, f9_modifiers.ahk

        f9_activated := True
        ;set the variable to false

        ToolTip, f9 Aktiviert
        ;show, that the script is activated via tooltip
        ;The tooltip is shown the entiere time, the script is running

    }
}

RunF10Script(){
    ; When f10 Key is pressed, run the f10_modifiers script, that opens applications
    run f10_modifiers.ahk
    ;Return after the script started
}

RunF12Script(){
    ; When f12 Key is pressed, run the f12_modifiers script, that opens applications
    run f12_modifiers.ahk
    ;Return after the script started
}

toggleApplicationSwitcher(){
    global application_switcher_activated
    ; When f9 is pressed, the f9_modifiers script gets toggeld
    if(application_switcher_activated == True){
        ;if the script is already running, stop it
        DetectHiddenWindows, On
        SetTitleMatchMode, 2
        WinClose, application_switcher.ahk
        ; find the process and exit it

        application_switcher_activated := False
        ;set the variable to false

        gui, Destroy

        Gui Color, White
        Gui -caption +toolwindow +AlwaysOnTop
        Gui font, s15 , Arial

        Gui add, text,  , Application Switcher Off
        Gui Show, % "x" 10 " y" A_ScreenHeight-100, TRANS-WIN
        

        sleep 3000

        gui, Destroy
    }

    else{
        ;if the script isnt running, run it

        Run, application_switcher.ahk

        application_switcher_activated := True
        ;set the variable to false

        Gui Color, White
        Gui -caption +toolwindow +AlwaysOnTop
        Gui font, s15 , Arial
        Gui add, text, , Application Switcher On
        Gui Show, % "x" 10 " y" A_ScreenHeight-100, TRANS-WIN
        
    }

}


return

