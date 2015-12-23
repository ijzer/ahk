#IfWinActive ahk_class SDIMainFrame

*Numpad0::
*Numpad0 UP::dual.combine("F23", A_ThisHotkey, {delay: 0, timeout: 200})

*NumpadEnter::
*NumpadEnter UP::dual.combine("F24", A_ThisHotkey, {delay: 0, timeout: 200}, {F23: "\"})

$Numpad7::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(TCSESMacro1)
      Gosub %TCSESMacro1%
  } else if (GetKeyState("F23")) {
    dual.Send("s")
  } else if (GetKeyState("F24")) {
    if IsLabel(TCSESMacro1)
      Gosub %TCSESMacro1%
  } else {
    Send {Numpad7}
  }
  return

$Numpad8::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(TCSESMacro2)
      Gosub %TCSESMacro2%
  } else if (GetKeyState("F23")) {
    dual.Send("i")
  } else if (GetKeyState("F24")) {
    if IsLabel(TCSESMacro2)
      Gosub %TCSESMacro2%
  } else {
    Send {Numpad8}
  }
  return

$Numpad9::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(TCSESMacro3)
      Gosub %TCSESMacro3%
  } else if (GetKeyState("F23")) {
    dual.Send("u")
  } else if (GetKeyState("F24")) {
    if IsLabel(TCSESMacro3)
      Gosub %TCSESMacro3%
  } else {
    Send {Numpad9}
  }
  return

$Numpad4::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(TCSESMacro4)
      Gosub %TCSESMacro4%
  } else if (GetKeyState("F23")) {
    dual.Send("[")
  } else if (GetKeyState("F24")) {
    if IsLabel(TCSESMacro4)
      Gosub %TCSESMacro4%
  } else {
    Send {Numpad4}
  }
  return

$Numpad5::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(TCSESMacro5)
      Gosub %TCSESMacro5%
  } else if (GetKeyState("F23")) {
    dual.Send("{F2}")
  } else if (GetKeyState("F24")) {
    if IsLabel(TCSESMacro5)
      Gosub %TCSESMacro5%
  } else {
    Send {Numpad5}
  }
  return

$Numpad6::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(TCSESMacro6)
      Gosub %TCSESMacro6%
  } else if (GetKeyState("F23")) {
    dual.Send("]")
  } else if (GetKeyState("F24")) {
    if IsLabel(TCSESMacro6)
      Gosub %TCSESMacro6%
  } else {
    Send {Numpad6}
  }
  return

$Numpad1::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(TCSESMacro7)
      Gosub %TCSESMacro7%
  } else if (GetKeyState("F23")) {
    dual.Send("{F11}")
  } else if (GetKeyState("F24")) {
    if IsLabel(TCSESMacro7)
      Gosub %TCSESMacro7%
  } else {
    Send {Numpad1}
  }
  return

$Numpad2::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(TCSESMacro8)
      Gosub %TCSESMacro8%
  } else if (GetKeyState("F23")) {
    dual.Send("{F6}")
  } else if (GetKeyState("F24")) {
    if IsLabel(TCSESMacro8)
      Gosub %TCSESMacro8%
  } else {
    Send {Numpad2}
  }
  return

$Numpad3::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    if IsLabel(TCSESMacro9)
      Gosub %TCSESMacro9%
  } else if (GetKeyState("F23")) {
    dual.Send("{F12}")
  } else if (GetKeyState("F24")) {
    if IsLabel(TCSESMacro9)
      Gosub %TCSESMacro9%
  } else {
    Send {Numpad3}
  }
  return

$NumpadDiv::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadDiv}")
  } else if (GetKeyState("F23")) {
    dual.Send("{F9}")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadDiv}")
  } else {
    Send {F7}
  }
  return

$NumpadMult::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadMult}")
  } else if (GetKeyState("F23")) {
    dual.Send("{F10}")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadMult}")
  } else {
    Send {F8}
  }
  return

$NumpadSub::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadSub}")
  } else if (GetKeyState("F23")) {
    dual.Send("{F3}")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadSub}")
  } else {
    Send {F5}
  }
  return

$NumpadAdd::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadAdd}")
  } else if (GetKeyState("F23")) {
    dual.Send("+{Tab}")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadAdd}")
  } else {
    Send {Tab}
  }
  return

$NumpadDot::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadDot}")
  } else if (GetKeyState("F23")) {
    dual.Send("{F12}")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadDot}")
  } else {
    Send ?{F4}
  }
  return

#If