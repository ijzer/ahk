SetTcsesDefaultMacros:
  TCSESMacro1 := "TcsesRluMailMacro"
  TCSESMacro2 := "TcsesMailMacro"
  TCSESMacro3 := "TcsesMschMacro"
  TCSESMacro4 := "TcsesCprfMacro"
  TCSESMacro5 := "TcsesCsfsMacro"
  TCSESMacro6 := "TcsesCasdMacro"
  TCSESMacro7 := ""
  TCSESMacro8 := ""
  TCSESMacro9 := ""
  Menu, TCSESMacros, Default, Default
  return

SetTcsesAcdvMacros:
  Gosub SetTcsesDefaultMacros
  TCSESMacro7 := "TcsesCmauMacro"
  TCSESMacro8 := "TcsesOblgMacro"
  TCSESMacro9 := "TcsesAddhMacro"
  Menu, TCSESMacros, Default, ACDVs
  return

SetTcsesCslnMacros:
  Gosub SetTcsesDefaultMacros
  TCSESMacro7 := "TcsesLgldMacro"
  TCSESMacro8 := "TcsesNpssMacro"
  Menu, TCSESMacros, Default, CSLN
  return

SetTcsesLumpSumMacros:
  Gosub SetTcsesDefaultMacros
  TCSESMacro8 := "TcsesNpssMacro"
  Menu, TCSESMacros, Default, Lump Sum Liens
  return

SetTcsesRluMacros:
  Gosub SetTcsesDefaultMacros
  TCSESMacro7 := "TcsesCslaMacro"
  TCSESMacro8 := "TcsesAddhMacro"
  TCSESMacro9 := "TcsesFmrrMacro"
  Menu, TCSESMacros, Default, Restricted Licenses
  return

TcsesGotoScreen(screen, member:="", case:="") {
;; floor() makes sure an item is a number
  member := floor(member) ? " m(" . floor(member) . ")" : ""
  case := floor(case) ? " c(" . floor(case) . ")" : ""
  dual.Send("{Enter}{Up}+{Tab}")
  dual.Send(screen)
  dual.Send(member)
  dual.Send(case)
  dual.Send("{Enter}")
  return
}

TcsesGetNcpMemID() {
  ClipSaved := ClipboardAll
  TcsesGotoScreen("cprf")
  SendEvent {Down}
  SendEvent {Right 32}
  SendEvent {Shift down}{Right 8}{Shift up}
  SendEvent [
  ClipWait
  memid := Clipboard
  Clipboard := ClipSaved
  ClipSaved =
  return memid
}

TcsesRluMailMacro:
  TcsesGotoScreen("mail")
  dual.Send("{Up 3}\de24lic{Enter}\\")
  return

TcsesMailMacro:
  TcsesGotoScreen("mail")
  dual.Send("{Up 3}\\\")
  return

TcsesMschMacro:
  TcsesGotoScreen("msch")
  dual.Send("{Tab}ss\\")
  return

TcsesCprfMacro:
  TcsesGotoScreen("cprf")
  return

TcsesCsfsMacro:
  TcsesGotoScreen("csfs")
  dual.Send("\{Tab}?{F4}s{Enter 2}")
  return

TcsesCasdMacro:
  TcsesGotoScreen("casd")
  return

TcsesCmauMacro:
  TcsesGotoScreen("cmau")
  return

TcsesOblgMacro:
  TcsesGotoScreen("oblg")
  return

TcsesLgldMacro:
  TcsesGotoScreen("lgld")
  dual.Send("\{Tab}?{F4}s{Enter 2}")
  return

TcsesNpssMacro:
  TcsesGotoScreen("npss")
  dual.Send("{Enter}")
  return

TcsesCslaMacro:
  memid := TcsesGetNcpMemID()
  TcsesGotoScreen("csla", memid)
  return

TcsesAddhMacro:
  memid := TcsesGetNcpMemID()
  TcsesGotoScreen("addh", memid)
  return

TcsesFmrrMacro:
  memid := TcsesGetNcpMemID()
;  memid := format("{:.9u}", memid)
;  Msgbox memid
;  TcsesGotoScreen("fmrr")
;  dual.Send("i{Space 9}")
;  dual.Send(memid)
;  dual.Send("{Enter}")
  return