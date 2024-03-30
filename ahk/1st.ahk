; ## 键位逻辑映射
; ### common
$Left::Control
$Up::/
$Down::Alt

; hotString, * 修饰以立即执行,而不添加空格
:*:131* ::13108238769
:*:19* ::1927870041@qq.com
:*:49* ::498995284@qq.com


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

; ### for blender
#IfWinActive ahk_exe blender.exe
$esc::`
#IfWinActive

; ### 一般功能快捷键
; 最小化窗口
; !d::WinMinimize, A

; 关闭当前应用程序
!w::WinClose, A
return

; 注销
#+l::
    Run, %comspec% /c Shutdown.exe /l
return

; xx.exe中执行以下
#IfWinActive Simplenote.exe msedge.exe
MButton::
    Send, ^v
return

^MButton::
    Send, ^c
return
#IfWinActive

; 将d键+滚轮上滑映射为PageUp
~d & WheelUp::Send {PgUp}
return


~d & WheelDown::Send {PgDn}
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



#IfWinNotActive ahk_class PotPlayer64
!.::
    send {Ctrl down}{Right}{Ctrl up}
return

!,::
    send {Ctrl down}{Left}{Ctrl up}
return
#IfWinActive

; ### 启动app
; 启动chromafiler
;!e:: 
;Run, "A:\application\app5\chromafile\ChromaFiler.exe"
;return

; 启动everything
!Space::
Run, "A:\application\app5\Everything\Everything.exe"
return

; 启动vpn
#v::
Run, "A:\application\app2_net\迷雾通\gephgui-wry.exe"
return


; ------ CapsLock+h,j,k,l 模拟方向键
/*
#UseHook
Capslock & k::
    ; "T"等价1,TURE;下函数等价GetKeyState("CapsLock")
    if GetKeyState("CapsLock", "T")
        Send {Up}
    else
        Send +{Up}
    return
pass
*/

; ------ 隐藏窗口标题栏
; 初始化变量
global titlebarHidden := false

!'::
    WinGet, hWnd, ID, A  ; 获取当前活动窗口的句柄
    if (titlebarHidden) {
        WinSet, Style, +0xC00000, ahk_id %hWnd%  ; 显示标题栏
        WinSet, Redraw,, ahk_id %hWnd%  ; 刷新窗口
        titlebarHidden := false
    } else {
        WinSet, Style, -0xC00000, ahk_id %hWnd%  ; 隐藏标题栏
        WinSet, ExStyle, 0x20, ahk_id %hWnd%  ; 移除窗口边框
        WinSet, Redraw,, ahk_id %hWnd%  ; 刷新窗口
        titlebarHidden := true
    }

    return

; ------


#IfWinActive ahk_exe WindowsTerminal.exe
^Backspace::
	Send, ^w
	return

^Enter::
	Send {Esc}o
	return

^+Enter::
	Send {Esc}O
	return

#IfWinActive

