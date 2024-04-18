$RAlt::Control

; ### 方向键
^p::
    Send {Up}
return

^n::
    Send {Down}
return

^,::
    Send {Left}
return

^.::
    Send {Right}
return

; 关闭当前应用程序
!w::WinClose, A
return

; 注销
#+l::
    Run, %comspec% /c Shutdown.exe /l
return


; 将d键+滚轮上滑映射为PageUp
~d & WheelUp::Send {PgUp}
return

~d & WheelDown::Send {PgDn}
return

; s+wheel
~s & WheelUp::Send {Up}
return

~s & WheelDown::Send {Down}
return

#IfWinNotActive ahk_exe WindowsTerminal.exe
^u::
    SendInput {Shift down}{Home}{Shift up}{Delete}
return

^k::
    Send {Shift down}{End}{Shift up}{Delete}
return

^e::
    Send {End}
return

^a::
    Send, {Home}
return

!Backspace::
    Send ^+{Right} ;
    Send {Delete} ;
return
#IfWinActive


