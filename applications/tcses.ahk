#IfWinActive, ahk_class SDIMainFrame

F1:: Gosub ExcelLumpSumPaymentEnd

WheelUp::Send {F7}
WheelDown::Send {F8}

;Numpad0::Send
;Numpad7::Send
;Numpad8::Send
;Numpad9::Send 
;Numpad4::Send 
;Numpad5::Send 
;Numpad6::Send 
;Numpad1::Send
;Numpad2::Send 
;Numpad3::Send 
NumpadDiv::Send {F7}
NumpadMult::Send {F8}
NumpadSub::Send {F5}
NumpadAdd::Send {Tab}
;NumpadEnter::Send
NumpadDot::Send ?{F4}

Numpad0::Send {Numpad0}
Numpad0 & Numpad7::Send s
Numpad0 & Numpad8::Send {F2}
Numpad0 & Numpad9::Send u 
Numpad0 & Numpad4::Send i
Numpad0 & Numpad5::Send {F6}
Numpad0 & Numpad6::Send a
Numpad0 & Numpad1::Send {F9}
Numpad0 & Numpad2::Send {F10}
Numpad0 & Numpad3::Send {F11}
Numpad0 & NumpadDiv::return
Numpad0 & NumpadMult::return
Numpad0 & NumpadSub::Send {F3}
Numpad0 & NumpadAdd::Send +{Tab}
Numpad0 & NumpadEnter::Send \
Numpad0 & NumpadDot::Send {F12}

NumpadEnter::Send {NumpadEnter}
NumpadEnter & Numpad7::
  if isLabel(TCSESMacro1)
    GoSub %TCSESMacro1%
  return
NumpadEnter & Numpad8::
  if isLabel(TCSESMacro2)
    GoSub %TCSESMacro2%
  return
NumpadEnter & Numpad9::
  if isLabel(TCSESMacro3)
    GoSub %TCSESMacro3%
  return
NumpadEnter & Numpad4::
  if isLabel(TCSESMacro4)
    GoSub %TCSESMacro4%
  return
NumpadEnter & Numpad5::
  if isLabel(TCSESMacro5)
    GoSub %TCSESMacro5%
  return
NumpadEnter & Numpad6::
  if isLabel(TCSESMacro6)
    GoSub %TCSESMacro6%
  return
NumpadEnter & Numpad1::
  if isLabel(TCSESMacro7)
    GoSub %TCSESMacro7%
  return
NumpadEnter & Numpad2::
  if isLabel(TCSESMacro8)
    GoSub %TCSESMacro8%
  return
NumpadEnter & Numpad3::
  if isLabel(TCSESMacro9)
    GoSub %TCSESMacro9%
  return
NumpadEnter & NumpadDiv::return
NumpadEnter & NumpadMult::return
NumpadEnter & NumpadSub::return
NumpadEnter & NumpadAdd::return
NumpadEnter & NumpadDot::return

#If