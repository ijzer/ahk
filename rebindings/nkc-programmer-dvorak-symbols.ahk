#If true
programmerDvorakSymbol(key, shift) {
  dual.combo()
  if GetKeyState("Shift") {
    dual.Send(shift)
  } else {
    dual.Send(key)
  }
  return
}

;; ~
*SC029::dual.comboKey("$", {Shift: "~"})

;; 0-9
SC002::programmerDvorakSymbol("{+}", "9")
SC003::programmerDvorakSymbol("{{}", "7")
SC004::programmerDvorakSymbol("[", "5")
SC005::programmerDvorakSymbol("(", "3")
SC006::programmerDvorakSymbol("=", "1")
*SC007::dual.comboKey("&", {Shift: "`%"})
SC008::programmerDvorakSymbol(")", "0")
SC009::programmerDvorakSymbol("]", "2")
SC00A::programmerDvorakSymbol("{}}", "4")
SC00B::programmerDvorakSymbol("*", "6")

;; []
SC00C::programmerDvorakSymbol("{!}", "8")
SC00D::programmerDvorakSymbol("{#}", "``")

;; =
*SC01B::dual.comboKey("@", {Shift: "^"})

;; ';
*SC010::dual.comboKey(";")
*SC02C::dual.comboKey("'")

#If