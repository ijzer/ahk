#IfWinActive ahk_class XLMAIN

*Numpad0::
*Numpad0 UP::dual.combine("F23", A_ThisHotkey, {delay: 0, timeout: 200})

*NumpadEnter::
*NumpadEnter UP::dual.combine("F24", A_ThisHotkey, {delay: 0, timeout: 200}, {F23: "Backspace"})

$Numpad7::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(ExcelMacro1)
      Gosub %ExcelMacro1%
  } else if (GetKeyState("F23")) {
    dual.Send("R")
  } else if (GetKeyState("F24")) {
    dual.Send("^{PgUp}")
  } else {
    Send {Numpad7}
  }
  return

$Numpad8::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(ExcelMacro2)
      Gosub %ExcelMacro2%
  } else if (GetKeyState("F23")) {
    dual.Send("-")
  } else if (GetKeyState("F24")) {
    dual.Send("{Up}")
  } else {
    Send {Numpad8}
  }
  return

$Numpad9::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(ExcelMacro3)
      Gosub %ExcelMacro3%
  } else if (GetKeyState("F23")) {
    dual.Send("C")
  } else if (GetKeyState("F24")) {
    dual.Send("^{PgDn}")
  } else {
    Send {Numpad9}
  }
  return

$Numpad4::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(ExcelMacro4)
      Gosub %ExcelMacro4%
  } else if (GetKeyState("F23")) {
    dual.Send("[")
  } else if (GetKeyState("F24")) {
    dual.Send("{Left}")
  } else {
    Send {Numpad4}
  }
  return

$Numpad5::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(ExcelMacro5)
      Gosub %ExcelMacro5%
  } else if (GetKeyState("F23")) {
    dual.Send("{Space}")
  } else if (GetKeyState("F24")) {
    dual.Send("^a")
  } else {
    Send {Numpad5}
  }
  return

$Numpad6::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(ExcelMacro6)
      Gosub %ExcelMacro6%
  } else if (GetKeyState("F23")) {
    dual.Send("]")
  } else if (GetKeyState("F24")) {
    dual.Send("{Right}")
  } else {
    Send {Numpad6}
  }
  return

$Numpad1::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(ExcelMacro7)
      Gosub %ExcelMacro7%
  } else if (GetKeyState("F23")) {
    dual.Send("=")
  } else if (GetKeyState("F24")) {
    dual.Send("{Esc}")
  } else {
    Send {Numpad1}
  }
  return

$Numpad2::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(ExcelMacro8)
      Gosub %ExcelMacro8%
  } else if (GetKeyState("F23")) {
    dual.Send("""")
  } else if (GetKeyState("F24")) {
    dual.Send("{Down}")
  } else {
    Send {Numpad2}
  }
  return

$Numpad3::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(ExcelMacro9)
      Gosub %ExcelMacro9%
  } else if (GetKeyState("F23")) {
    dual.Send(":")
  } else if (GetKeyState("F24")) {
    dual.Send("{F2}")
  } else {
    Send {Numpad3}
  }
  return
		
$NumpadDiv::
  dual.combo()
  if (GetKeyState("F23")) {
    dual.Send("{NumpadDiv}")
  } else if (GetKeyState("F24")) {
    if IsLabel(ExcelMacro1)
      Gosub %ExcelMacro1%
  } else {
    Send (
  }
  return

$NumpadMult::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadMult}")
  } else if (GetKeyState("F23")) {
    dual.Send("{NumpadMult}")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadMult}")
  } else {
    Send )
  }
  return

$NumpadSub::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadSub}")
  } else if (GetKeyState("F23")) {
    dual.Send("{NumpadAdd}")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadSub}")
  } else {
    Send {NumpadSub}
  }
  return

$NumpadAdd::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("+{Tab}")
  } else if (GetKeyState("F23")) {
    dual.Send("+{Tab}")
  } else if (GetKeyState("F24")) {
    dual.Send("+{Tab}")
  } else {
    Send {Tab}
  }
  return

$NumpadDot::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadDot}")
  } else if (GetKeyState("F23")) {
    dual.Send("'")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadDot}")
  } else {
    Send {NumpadDot}
  }
  return

#If