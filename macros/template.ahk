Menu, XMacros, Add, Default, SetXDefaultMacros

Menu, Tray, Add, X Macros, :XMacros

Menu, Tray, NoStandard
Menu, Tray, Standard

SetXDefaultMacros:
  XMacro1 := "XWhateverMacro"
  XMacro2 := ""
  XMacro3 := ""
  XMacro4 := ""
  XMacro5 := ""
  XMacro6 := ""
  XMacro7 := ""
  XMacro8 := ""
  XMacro9 := ""
  Menu, XMacros, Check, Default
  return

XWhateverMacro:
  return