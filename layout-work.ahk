#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState AlwaysOff

#Include <dual/dual>
dual := new Dual

;; menus
#Include %A_ScriptDir%\macros\fn.ahk
#Include %A_ScriptDir%\macros\tcses.ahk
#Include %A_ScriptDir%\macros\excel.ahk

Menu, Tray, MainWindow
;; auto exec stops here
#Include <dual/defaults>

;; rebindings
#Include %A_ScriptDir%\rebindings\nkc-programmer-dvorak-symbols.ahk

;; layers
#Include %A_ScriptDir%\layers\movement.ahk

;; numpads
#Include %A_ScriptDir%\numpads\fn.ahk
#Include %A_ScriptDir%\numpads\tcses.ahk
#Include %A_ScriptDir%\numpads\excel.ahk

*ScrollLock::dual.reset()

#If true
*Space::
*Space UP::dual.combine("RCtrl", A_ThisHotkey)

