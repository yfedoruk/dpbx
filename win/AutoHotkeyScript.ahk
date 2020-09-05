#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#PgUp::Send {Volume_Up 1}
#PgDn::Send {Volume_Down 1}

;the + means shift
;the ^ means ctrl
;the F5 meand F5

;play/pause
^3::Send {Media_Play_Pause}
return

;up/down
^1::Send {Volume_Down 1}
^2::Send {Volume_Up 1}
return

; {Media_Prev} {Media_Next} {Volume_Mute}

;CapsLock map to Esc  (https://superuser.com/a/410835)
$CapsLock Up::Send {Escape}
return