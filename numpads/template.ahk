#If

*Numpad0::
*Numpad0 UP::dual.combine("F23", A_ThisHotkey, {delay: 0, timeout: 200})

*NumpadEnter::
*NumpadEnter UP::dual.combine("F24", A_ThisHotkey, {delay: 0, timeout: 200}, {F23: "\"})

$Numpad7::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{Numpad7}")
  } else if (GetKeyState("F23")) {
    dual.Send("{Numpad7}")
  } else if (GetKeyState("F24")) {
    dual.Send("{Numpad7}")
  } else {
    Send {Numpad7}
  }
  return

$Numpad8::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{Numpad8}")
  } else if (GetKeyState("F23")) {
    dual.Send("{Numpad8}")
  } else if (GetKeyState("F24")) {
    dual.Send("{Numpad8}")
  } else {
    Send {Numpad8}
  }
  return

$Numpad9::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{Numpad9}")
  } else if (GetKeyState("F23")) {
    dual.Send("{Numpad9}")
  } else if (GetKeyState("F24")) {
    dual.Send("{Numpad9}")
  } else {
    Send {Numpad9}
  }
  return

$Numpad4::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{Numpad4}")
  } else if (GetKeyState("F23")) {
    dual.Send("{Numpad4}")
  } else if (GetKeyState("F24")) {
    dual.Send("{Numpad4}")
  } else {
    Send {Numpad4}
  }
  return

$Numpad5::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{Numpad5}")
  } else if (GetKeyState("F23")) {
    dual.Send("{Numpad5}")
  } else if (GetKeyState("F24")) {
    dual.Send("{Numpad5}")
  } else {
    Send {Numpad5}
  }
  return

$Numpad6::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{Numpad6}")
  } else if (GetKeyState("F23")) {
    dual.Send("{Numpad6}")
  } else if (GetKeyState("F24")) {
    dual.Send("{Numpad6}")
  } else {
    Send {Numpad6}
  }
  return

$Numpad1::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{Numpad1}")
  } else if (GetKeyState("F23")) {
    dual.Send("{Numpad1}")
  } else if (GetKeyState("F24")) {
    dual.Send("{Numpad1}")
  } else {
    Send {Numpad1}
  }
  return

$Numpad2::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{Numpad2}")
  } else if (GetKeyState("F23")) {
    dual.Send("{Numpad2}")
  } else if (GetKeyState("F24")) {
    dual.Send("{Numpad2}")
  } else {
    Send {Numpad2}
  }
  return

$Numpad3::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{Numpad3}")
  } else if (GetKeyState("F23")) {
    dual.Send("{Numpad3}")
  } else if (GetKeyState("F24")) {
    dual.Send("{Numpad3}")
  } else {
    Send {Numpad3}
  }
  return

$NumpadDiv::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadDiv}")
  } else if (GetKeyState("F23")) {
    dual.Send("{NumpadDiv}")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadDiv}")
  } else {
    Send {NumpadDiv}
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
    Send {NumpadMult}
  }
  return

$NumpadSub::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadSub}")
  } else if (GetKeyState("F23")) {
    dual.Send("{NumpadSub}")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadSub}")
  } else {
    Send {NumpadSub}
  }
  return

$NumpadAdd::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadAdd}")
  } else if (GetKeyState("F23")) {
    dual.Send("{NumpadAdd}")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadAdd}")
  } else {
    Send {NumpadAdd}
  }
  return

$NumpadDot::
  dual.combo()
  if (GetKeyState("F23") && GetKeyState("F24")) {
    dual.Send("{NumpadDot}")
  } else if (GetKeyState("F23")) {
    dual.Send("{NumpadDot}")
  } else if (GetKeyState("F24")) {
    dual.Send("{NumpadDot}")
  } else {
    Send {NumpadDot}
  }
  return

#If