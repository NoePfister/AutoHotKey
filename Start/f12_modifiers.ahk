

#SingleInstance, Force



;Prevent the Function to call itself
#UseHook


n:: 
    if WinExist("ahk_class Notepad")
        WinActivate  ; Activate the window found above
    else
        Run notepad  ; Open a new Notepad window

ExitApp, 0
Return

        
c:: 
    if WinExist("ahk_exe chrome.exe")
            WinActivate  ; Activate the window found above
    else
        Run C:\Program Files\Google\Chrome\Application\chrome.exe
ExitApp, 0
Return



d:: 
    if WinExist("ahk_exe Discord.exe")
        WinActivate  ; Activate the window found above
    else
        Run C:\Users\Pfist\AppData\Local\Discord\Update.exe --processStart Discord.exe
ExitApp, 0
Return

e:: 
    if WinExist("ahk_class CabinetWClass")
        WinActivate  ; Activate the window found above
    else
        Run explorer.exe
ExitApp, 0        
Return



m::

    if WinExist("ahk_exe Feather Launcher.exe")
        WinActivate  ; Activate the window found above
    else
        Run C:\Program Files\Feather Launcher\Feather Launcher.exe
ExitApp, 0        
Return



o::

    if WinExist("ahk_exe olk.exe")
        WinActivate  ; Activate the window found above
    else
        Run C:\Program Files\WindowsApps\Microsoft.OutlookForWindows_1.2024.223.300_x64__8wekyb3d8bbwe\olk.exe
ExitApp, 0
Return

w::

    if WinExist("ahk_exe Feather WhatsApp.exe")
        WinActivate  ; Activate the window found above
    else
        Run C:\Program Files\WindowsApps\5319275A.WhatsAppDesktop_2.2407.10.0_x64__cv1g1gvanyjgm\WhatsApp.exe
ExitApp, 0
Return

g::

    if WinExist("ahk_exe ONENOTE.EXE")
        WinActivate  ; Activate the window found above
    else
        Run C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE
ExitApp, 0
Return






    

