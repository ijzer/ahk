FilterCopy() {
  Clipboard :=
  Send [
  ClipWait
  StringReplace, Clipboard, Clipboard, _, , All
  StringReplace, Clipboard, Clipboard, `r`n, , All
}

ExcelLumpSumMacro:
  WinActivate ahk_class XLMAIN
    ; get case number from excel
    ClipSaved := ClipboardAll
    Clipboard :=
    Send ^c
    ClipWait
    StringReplace, Clipboard, Clipboard, `r`n, , All
    LS_Case := Clipboard

  WinActivate ahk_class SDIMainFrame
    ; use case number to pull up case
    Send {F5}+{Tab}cprf{Enter}{Space 9}+{Tab}%LS_Case%{Enter}
    Sleep 1500

    ; get case type
    Send {Right 11}{Shift Down}{Right 5}{Shift Up}
    FilterCopy()
    LS_Type := Clipboard

    ; get case status
    Send {Right 7}{Shift Down}{Right 7}{Shift Up}
    FilterCopy()
    LS_Status := Clipboard

    ; get ncp name
    Send +{Tab}{Down}{Left 3}{Shift Down}{Right 29}{Shift Up}
    FilterCopy()
    Clipboard := Format("{:T}", Clipboard)
    LS_Name := Clipboard

    ; get ncp ssn
    Send {Down 4}{Right 13}{Shift Down}{Right 8}{Shift Up}
    FilterCopy()
    LS_SSN := Clipboard

    ; get jd
    Send {Up 4}{Right 11}{Shift Down}{Right 2}{Shift Up}
    FilterCopy()
    LS_JD := Clipboard

    ; skip csfs if case is closed
    if (LS_Status == "STATUS C") {
      LS_Balance := "Closed"
      GoSub ExcelLumpSumEnd
      return
    }

    ; get bankruptcy indicator
    Send {Down 10}{Left 2}{Shift Down}{Right 4}{Shift Up}
    FilterCopy()
    LS_Bankruptcy := Clipboard

    ; switch to csfs
    Send {Tab}csfs{Enter}

    ; pull up docket
    Send {Tab 2}?{F4}s{Enter 2}
    Sleep 2000

    ; get docket number
    Send {Tab}{Shift Down}{Right 12}{Shift Up}
    FilterCopy()
    LS_Docket := Clipboard

    ; get balance
    if (LS_Type == "TYPE X") {
      LS_Balance := "X Type"
    } else if (LS_Bankruptcy == "BKR Y") {
      LS_Balance := "Bankruptcy"
    } else {
      Send +{Tab 4}{Right 30}{Shift Down}{Right 11}{Shift Up}
      FilterCopy()
      LS_Balance := Clipboard
    }

ExcelLumpSumEnd:
  WinActivate ahk_class XLMAIN
    Send,
    (LTrim Join`t
    +{Tab 2}%LS_Name%
    %LS_SSN%

    %LS_Docket%
    %LS_JD%
    %LS_Balance%
    {Enter}{Tab 2}
    )
  LS_Name =
  LS_Case =
  LS_SSN =
  LS_Docket =
  LS_JD =
  LS_Balance =
  LS_Status =
  LS_Type =
  LS_Bankruptcy =
  Clipboard := ClipSaved
  ClipSaved =
  return

ExcelLumpSumPayment:
  WinActivate ahk_class XLMAIN
    ; get case number from excel
    ClipSaved := ClipboardAll
    Clipboard :=
    Send ^c
    ClipWait
    StringReplace, Clipboard, Clipboard, `r`n, , All
    LS_Case := Clipboard
    Clipboard =

    ; get docket number
    Send {Tab}^c
    ClipWait
    StringReplace, Clipboard, Clipboard, `r`n, , All
    LS_Docket := Clipboard
    Clipboard =
    Send {Enter}

  WinActivate ahk_class SDIMainFrame
    ; use case number to pull up case
    Send {F5}+{Tab}cprf{Enter}{Space 9}+{Tab}%LS_Case%{Enter}

    ; switch to npss
    Send {Tab}npss{Enter}{Tab}{Space 13}+{Tab}%LS_Docket%

  LS_Case =
  LS_Docket =
  Clipboard := ClipSaved
  ClipSaved =
  return

ExcelLumpSumPaymentEnd:
  ClipSaved := ClipboardAll
  Clipboard :=
    ; npss
    ; get receipt date
    Send {Right 10}+{Tab}
    Send {Right 12}{Shift Down}{Right 9}{Shift Up}
    FilterCopy()
    StringReplace, Clipboard, Clipboard, %A_Space%, -, All
    LS_Date := Clipboard

    ; get receipt amount
    Send {Right 12}{Shift Down}{Right 9}{Shift Up}
    FilterCopy()
    LS_Amount := Clipboard

  WinActivate ahk_class XLMAIN
    Send +{Enter}{Tab 6}%LS_Date%{Tab}%LS_Amount%{Enter}

  LS_Date =
  LS_Amount =
  Clipboard := ClipSaved
  ClipSaved =
  return