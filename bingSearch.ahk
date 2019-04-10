SetWorkingDir %A_ScriptDir%

^CtrlBreak::
    ;launch Edge
    Send, ^{Esc}
    Sleep, 10
    Send, edge
    Sleep, 2
    Send, {Enter}
    Sleep, 200

    ;do searches
    Loop, 34 {
        Send, ^l
        Sleep, 100
        Random, num, 1, 10000
        FileReadLine, line, words.txt, %num%
        Send, %line%
        Send, {Enter}
        Random, delay, 1500,8000
        Sleep, %delay%
    }