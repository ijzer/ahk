SetExcelDefaultMacros:
  ExcelMacro1 := "ExcelLumpSumMacro"
  ExcelMacro2 := ""
  ExcelMacro3 := ""
  ExcelMacro4 := ""
  ExcelMacro5 := ""
  ExcelMacro6 := ""
  ExcelMacro7 := ""
  ExcelMacro8 := ""
  ExcelMacro9 := ""
  Menu, ExcelMacros, Check, Default
  return

ExcelLumpSumMacro:
  ClipSaved := ClipboardAll
  ClipBoard :=
  SendEvent ^c
  ClipWait
  SendEvent {Left 2}
  Sleep 500
  WinActivate ahk_class SDIMainFrame
  TcsesGotoScreen("cprf")
  dual.Send("{Space 9}+{Tab}")
  dual.Send(ClipBoard)
  SendEvent {Down}
  Sleep 1000
  SendEvent {Left 3}
  Sleep 1000
  SendEvent {Shift down}{Right 29}{Shift up}
  SendEvent [
  ClipWait
  StringReplace, ClipBoard, ClipBoard, _, , All
  ClipBoard := Format("{:T}", Clipboard)
  WinActivate ahk_class XLMAIN
  StringReplace, ClipBoard, ClipBoard, `r`n, , All
  SendEvent {Backspace}^v{Tab}
  WinActivate ahk_class SDIMainFrame
  dual.Send("{Enter}")
  Sleep 1000
  SendEvent {Down 5}
  Sleep 1000
  SendEvent {Right 39}
  Sleep 1000
  SendEvent {Shift down}{Right 8}{Shift up}
  SendEvent [
  ClipWait
  WinActivate ahk_class XLMAIN
  StringReplace, ClipBoard, ClipBoard, `r`n, , All
  SendEvent {Backspace}^v{Tab 2}
  WinActivate ahk_class SDIMainFrame
  TcsesGotoScreen("csfs")
  dual.Send("\{Tab}?{F4}s{Enter 2}\")
  Sleep 1500
  SendEvent {Shift down}{Right 12}{Shift up}
  SendEvent [
  ClipWait
  StringReplace, ClipBoard, ClipBoard, _, , All
  WinActivate ahk_class XLMAIN
  StringReplace, ClipBoard, ClipBoard, `r`n, , All
  SendEvent {Backspace}^v{Tab}
  WinActivate ahk_class SDIMainFrame
  dual.Send("{Enter}")
  Sleep 1000
  SendEvent {Down}
  Sleep 1000
  SendEvent {Right 58}
  Sleep 1000
  SendEvent {Shift down}{Right 2}{Shift up}
  SendEvent [
  ClipWait
  WinActivate ahk_class XLMAIN
  StringReplace, ClipBoard, ClipBoard, `r`n, , All
  SendEvent {Backspace}^v{Tab}
  WinActivate ahk_class SDIMainFrame
  dual.Send("{Enter}+{Tab 2}")
  Sleep 1000
  SendEvent {Right 31}
  Sleep 1000
  SendEvent {Shift down}{Right 10}{Shift up}
  SendEvent [
  ClipWait
  WinActivate ahk_class XLMAIN
  StringReplace, ClipBoard, ClipBoard, `r`n, , All
  SendEvent {Backspace}^v{Tab}
  dual.Send("{Enter}{Tab 2}")
  Clipboard := ClipSaved
  ClipSaved =
  return