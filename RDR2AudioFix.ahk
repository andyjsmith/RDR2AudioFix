#SingleInstance, Force
#Persistent

#Include VA.ahk
#Include ISimpleAudioVolume.ahk

SendMode Input
SetWorkingDir, %A_ScriptDir%

ProcessExist(Name){
    Process,Exist,%Name%
    return Errorlevel
}

SetTimer, RunChecker, 5000

RunChecker:
    If ProcessExist("RDR2.exe")
    {
        vol := VA_GetMasterVolume()
        VA_SetAppVolume("RDR2.exe", 100.0)
    }
return