#Requires AutoHotkey v2.0
#SingleInstance Force


; Don't use this hotkey in console windows and code editors, where "--" is often used
; intentionally. Add other windows to exlude here if desired. AutoHotkey's Window Spy
; can be used to determine the name of each.
#HotIf !WinActive("ahk_exe devenv.exe")
    && !WinActive("ahk_exe code.exe")
    && !WinActive("ahk_exe WindowsTerminal.exe")

; Adjust this as desired to make the time window between hypen keystrokes that should be
;combined into en or em dashes more or less lenient. The default is 400 milliseconds.
TIME_THRESHOLD_MS := 400

EN_DASH := "–"
EM_DASH := "—"

PRIOR_EN_DASH := false
PRIOR_EM_DASH := false

$-::
{
	Critical
	global PRIOR_EN_DASH, PRIOR_EM_DASH
	if (A_PriorKey == "-" && A_TimeSincePriorHotkey < TIME_THRESHOLD_MS && !PRIOR_EM_DASH)
	{
		; If we just sent an en dash, make it an em dash
		if (PRIOR_EN_DASH)
		{
			Send "{BackSpace}"
			Send EM_DASH
			PRIOR_EN_DASH := false
			PRIOR_EM_DASH := true
		}
		; If we just sent a hyphen, make it an en dash
		else
		{
			Send "{BackSpace}"
			Send EN_DASH
			PRIOR_EN_DASH := true
		}
	}
	; Send a hyphen if it's the first thing sent (or if we just finished up an em dash)
	else
	{
		Send "-"
		PRIOR_EN_DASH := false
		PRIOR_EM_DASH := false
	}
}