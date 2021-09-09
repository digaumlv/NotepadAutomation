; In order for the x86 DLLs to work
#AutoIt3Wrapper_UseX64=n

;Include OpenCV library
#include "OpenCV-Match_UDF.au3"

;Debug MarkMatch
$bDebug = True

;loads opencv DLLs
_OpenCV_Startup()

;Logs matches, errors in a log file and autoit console output.
_OpenCV_EnableLogging(false,false,false)

;Set Wintitle
$WinTitle = "[CLASS:Notepad]"

;Example, matching on a specific area of the screen
ShellExecute("notepad.exe");open nodepad
WinWait($WinTitle,"",5)
WinMove($WinTitle,"",0,0,500,500)

;~ Calculates the center of a rect using an array with coordinates and then clicks the left/right mouse button.
;~ Parameters: FilePath image to Match
;~ 			   % Threshold
;~ 			   Coordenates matching on a specific area of the screen
;~ 			   Wait 5 seconds: 10 (tries) and 500 per tries

; Image Arquivo 1
ControlSetText($WinTitle,"","Edit1","Arquivo")
$Match = _MatchPicture(@ScriptDir&"\Match\Notepad\img (1).png", 0.9,false,10,500)
If Not @error Then
	if($bDebug=True) then
		_MarkMatch($Match)
		Sleep(1000)
	EndIf
	_ClickMouse($Match, "left", 1)
EndIf

; Image Editar 2
ControlSetText($WinTitle,"","Edit1","Editar")
$Match = _MatchPicture(@ScriptDir&"\Match\Notepad\img (2).png", 0.9,false,10,500)
If Not @error Then
	if($bDebug=True) then
		_MarkMatch($Match)
		Sleep(1000)
	EndIf
	_ClickMouse($Match, "left", 1)
EndIf

;Image Formatar 3
ControlSetText($WinTitle,"","Edit1","Formatar")
$Match = _MatchPicture(@ScriptDir&"\Match\Notepad\img (3).png", 0.9,false,10,500)
If Not @error Then
	if($bDebug=True) then
		_MarkMatch($Match)
		Sleep(1000)
	EndIf
	_ClickMouse($Match, "left", 1)
EndIf

;Image Exibir 4
ControlSetText($WinTitle,"","Edit1","Exibir")
$Match = _MatchPicture(@ScriptDir&"\Match\Notepad\img (4).png", 0.9,false,10,500)
If Not @error Then
	if($bDebug=True) then
		_MarkMatch($Match)
		Sleep(1000)
	EndIf
	_ClickMouse($Match, "left", 1)
EndIf

;Image Ajuda 5
ControlSetText($WinTitle,"","Edit1","Ajuda")
$Match = _MatchPicture(@ScriptDir&"\Match\Notepad\img (5).png", 0.9,false,10,500)
If Not @error Then
	if($bDebug=True) then
		_MarkMatch($Match)
		Sleep(1000)
	EndIf
	_ClickMouse($Match, "left", 1)
EndIf

;Closes DLLs
_OpenCV_Shutdown()
