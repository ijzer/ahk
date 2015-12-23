#If true
SetCapsLockState AlwaysOff

*CapsLock::
*CapsLock UP::dual.combine("F22", "F22")

g::dual.comboKey({F22: "Tab"})
m::
  dual.combo()
  if (GetKeyState("F22")) {
    Send +{Tab}
  } else {
    Send m
  }
  return

c::dual.comboKey({F22: "Home"})
w::dual.comboKey({F22: "End"})

r::dual.comboKey({F22: "PgUp"})
v::dual.comboKey({F22: "PgDn"})

h::dual.comboKey({F22: "Left"})
t::dual.comboKey({F22: "Down"})
n::dual.comboKey({F22: "Up"})
s::dual.comboKey({F22: "Right"})

Backspace::dual.comboKey({F22: "Delete"})

#If