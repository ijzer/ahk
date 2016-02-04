#If true
*Tab::
*Tab UP::dual.combine("F20", "|")

*\::
*\ UP::dual.combine("F20", "\")

*CapsLock::
*CapsLock UP::dual.combine("LAlt", "Tab")

*Enter::
*Enter UP::dual.combine("RAlt", "Enter")

*LShift::
*LShift UP::dual.combine("LShift", "Delete", {delay: 20, doublePress: 100})

*RShift::
*RShift UP::dual.combine("RShift", "Backspace", {delay: 20, doublePress: 100})

*Space::
*Space UP::dual.combine("LCtrl", "Space")
#If

#InputLevel 1
#If true
Backspace::RCtrl

LCtrl::F22
RCtrl::F22

LAlt::F21
RAlt::F21

LWin::F23
RWin::F23

#If
#InputLevel 0