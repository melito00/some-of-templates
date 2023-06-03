; 左右 Alt キーの空打ちで IME の OFF/ON を切り替える
;
; 左 Alt キーの空打ちで IME を「英数」に切り替え
; 右 Alt キーの空打ちで IME を「かな」に切り替え
; Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作
;
; Author:     karakaram   http://www.karakaram.com/alt-ime-on-off
;;; curl -Lo IME.ahk https://raw.githubusercontent.com/karakaram/alt-ime-ahk/master/IME.ahk
; curl -Lo IME.ahk https://raw.githubusercontent.com/kdr-s/ime.ahk-v2/master/IME.ahk

; + : Shift
; ^ : Ctrl
; ! : Alt
; # : Win

; sc03a::Capslock, sc079::変換, sc07b::無変換

#Requires AutoHotkey v2.0

#Include C:\Users\kyamada\Documents\IME.ahk

; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
#MaxHotkeysPerInterval 350

RWin::Send "{vkF0sc03A}"
^RWin::Send  "^{vk1Dsc07B}"
+RWin::Send  "+{vk1Dsc07B}"

XButton2::Home

F14::Send  "{Ins}"
^F14::Send  "^{Ins}"
+F14::Send  "+{Ins}"

; 主要なキーを HotKey に設定し、何もせずパススルーする

RControl::Escape
^[::Send "{Escape}"
; Escape::`
; +Escape::~

; 主要なキーを HotKey に設定し、何もせずパススルーする
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
;*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
    Return

; 上部メニューがアクティブになるのを抑制
#HotIfWinNotActive, ahk_exe WindowsTerminal.exe
{
*~LAlt::Send "{Blind}{vkE8}"
*~RAlt::Send "{Blind}{vkE8}"

; 左 Alt 空打ちで IME を OFF
LAlt up::
    if (A_PriorHotkey = "*~LAlt")
    {
        IME_SET(0)
    }
    Return

; 右 Alt 空打ちで IME を ON
RAlt up::
    if (A_PriorHotkey = "*~RAlt")
    {
        IME_SET(1)
    }
    Return
}
