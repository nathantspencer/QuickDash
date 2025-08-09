#Requires AutoHotkey v2.0
#SingleInstance Force

; Compiler directives to set property values for the SuperGlue executable. When a
; new version is released, the version field at the top should be incremented.
;@Ahk2Exe-SetVersion 1.0.0
;@Ahk2Exe-SetName SuperGlue
;@Ahk2Exe-SetDescription SuperGlue Keyboard Shortcuts
;@Ahk2Exe-SetCopyright © 2025 Nathan Spencer. All rights reserved.

^+v::
{
	Loop Parse A_Clipboard, "`n", "`r"
	{
		Send A_LoopField
	}
}