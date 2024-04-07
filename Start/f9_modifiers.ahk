;THIS SCRIPT IS INTENDED TO BE TOGGLED FROM THE MAIN FILE
;IT IS FOR MACROS, YOU ARE GONNA USE MULTIPLE TIMES IN A ROW

#SingleInstance, Force
; Only allow 1 instance of this script to be running
#UseHook
;Prevent the Function to call itself

SetWorkingDir, %A_ScriptDir%
SendMode Input


c:: CopyToClipboard()

v:: PasteFromClipboard()

x:: CutToClipboard()

CopyToClipboard(){
    Send, {CtrlDown}c{CtrlUp}
}

PasteFromClipboard(){
    Send, {CtrlDown}v{CtrlUp}
}

CutToClipboard(){
    Send, {CtrlDown}x{CtrlUp}
}

