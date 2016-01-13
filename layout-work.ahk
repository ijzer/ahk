#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState AlwaysOff

#Include <dual/dual>
dual := new Dual({delay: 50, timeout: 200})

;; menus
Menu, TCSESMacros, Add, Default, SetTcsesDefaultMacros
Menu, TCSESMacros, Add, ACDVs, SetTcsesAcdvMacros
Menu, TCSESMacros, Add, CSLN, SetTcsesCslnMacros
Menu, TCSESMacros, Add, Lump Sum Liens, SetTcsesLumpSumMacros
Menu, TCSESMacros, Add, Restricted Licenses, SetTcsesRluMacros

Menu, Tray, Add, TCSES Macros, :TCSESMacros
GoSub SetTcsesDefaultMacros

Menu, ExcelMacros, Add, Default, SetExcelDefaultMacros

Menu, Tray, Add, Excel Macros, :ExcelMacros
GoSub SetExcelDefaultMacros

Menu, Tray, NoStandard
Menu, Tray, Standard


Menu, Tray, MainWindow

;; auto exec stops here
#Include <dual/defaults>

;; rebindings
#Include %A_ScriptDir%\rebindings\nkc-programmer-dvorak-symbols.ahk
#Include %A_ScriptDir%\rebindings\nkc-dual-keys.ahk

;; layers
#Include %A_ScriptDir%\layers\layers.ahk

;; numpads
#Include %A_ScriptDir%\numpads\fn.ahk
#Include %A_ScriptDir%\numpads\tcses.ahk
#Include %A_ScriptDir%\numpads\excel.ahk

;; macros
#Include %A_ScriptDir%\macros\fn.ahk
#Include %A_ScriptDir%\macros\tcses.ahk
#Include %A_ScriptDir%\macros\excel.ahk

*ScrollLock::dual.reset()