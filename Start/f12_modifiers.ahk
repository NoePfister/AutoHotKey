;THIS SCRIPT IS INTENDED TO BE RUN BY THE MAIN SCRIPT
;THIS SCRIPT RUNS A COMMAND ONES AND THEN EXITS
;THIS SCRIPT RUNS SIMPLE COMMAND LIKE OPENING AN APPLICATION

#SingleInstance, Force
;only allow 1 instance of this script

n:: OpenNotepad()
;Opens or focuses the most recent Notepad window

c:: OpenChrome()
;Opens or focuses teh most recent Chrome window

t:: OpenTodo()
;opens a new Todo window

d:: OpenDiscord()
;opens or focuses Discord

e:: OpenExplorer()
;open or focus explorere

m:: OpenFeatherLauncher()
;open or focus feather Launcher

i:: DrawOnScreen()
;open the draw on screen application

OpenNotepad(){
    if WinExist("ahk_class Notepad")
        WinActivate ; Activate the window found above
    else
        Run notepad ; Open a new Notepad window

    ExitApp, 0
    Return
}

OpenChrome(){
    if WinExist("ahk_exe chrome.exe")
        WinActivate ; Activate the window found above
    else
        Run C:\Program Files\Google\Chrome\Application\chrome.exe
    ExitApp, 0
    Return
}

OpenTodo(){
    Run python D:\Apps\Todo\v1.0\main.py D:\ D:\Dokumente\Todo
    ExitApp, 0
    Return
}

OpenDiscord(){
    if WinExist("ahk_exe Discord.exe")
        WinActivate ; Activate the window found above
    else
        Run C:\Users\Pfist\AppData\Local\Discord\Update.exe --processStart Discord.exe
    ExitApp, 0
    Return
}

OpenExplorer(){
    if WinExist("ahk_class CabinetWClass")
        WinActivate ; Activate the window found above
    else
        Run explorer.exe
    ExitApp, 0 
    Return
}

OpenFeatherLauncher(){ 
    if WinExist("ahk_exe Feather Launcher.exe")
        WinActivate ; Activate the window found above
    else
        Run C:\Program Files\Feather Launcher\Feather Launcher.exe
    ExitApp, 0 
    Return
}

DrawOnScreen(){
    Run D:\Apps\glnk\gInk\bin\gInk.exe
    ExitApp, 0 
    Return
}