#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#PgUp::Send {Volume_Up 1}
#PgDn::Send {Volume_Down 1}

^1::Send {Volume_Down 1}
^2::Send {Volume_Up 1}