#NoEnv
#SingleInstance force
SendMode Input
SetWorkingDir %A_ScriptDir% 

#Include <dual/dual>
dual := new Dual

;; menus/macros
#Include %A_ScriptDir%\macros\fn.ahk

Menu, Tray, MainWindow

;; auto exec stops here
#Include <dual/defaults>

;; rebindings
#Include %A_ScriptDir%\rebindings\nkc-programmer-dvorak-symbols.ahk

;; layers
#Include %A_ScriptDir%\layers\movement.ahk

;; numpads
#Include %A_ScriptDir%\numpads\fn.ahk

*ScrollLock::dual.reset()

#If true
*Space::
*Space UP::dual.combine("RCtrl", A_ThisHotkey)

