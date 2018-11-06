; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

#z::Run www.autohotkey.com

;^!n::
;IfWinExist Untitled - Notepad
;	WinActivate
;else
;	Run Notepad
;return


; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

; vk1Dsc07B: 無変換
; vkF3sc029: 半角/全角
; vkF4sc029: 半角/全角

AppsKey::Send {vk1Dsc07B}
+AppsKey::Send +{vk1Dsc07B}
^AppsKey::Send ^{vk1Dsc07B}

;; For ThinkPad, PrintScreen key is located to right bottom
PrintScreen::Send {vk1Dsc07B}
+PrintScreen::Send +{vk1Dsc07B}
^PrintScreen::Send ^{vk1Dsc07B}

;vkF1::vk1Dsc07B
;sc11D::vk1Dsc07B ;sc11D -> RControl

;; For DREVO Calibur and HHKB 
;RControl::Send {Escape}
vkF1sc11D::Send {Escape}
^[::Send {Escape}
Escape::`
+Escape::~
^+sc11D::Run taskmgr.exe

XButton2::Home

;F1::
;	WinGet, vcurrentwindow, ID, A
;	vimestate := DllCall("user32.dll\SendMessageA", "UInt", DllCall("imm32.dll\ImmGetDefaultIMEWnd", "Uint", vcurrentwindow), "UInt", 0x0283, "Int", 0x0005, "Int", 0)
;	Msgbox, %vimestate% `n 0はOFF `n 1はON
;	return
