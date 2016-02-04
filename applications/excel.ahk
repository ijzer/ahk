#IfWinActive ahk_class XLMAIN
MButton::Send ^v

F1:: Gosub ExcelLumpSumMacro
F3:: Gosub ExcelLumpSumPayment
#If