#Requires AutoHotkey v2.0

; Adjust this as desired to make the time window between hypen keystrokes
; more or less lenient. Default is 300 milliseconds.
TIME_THRESHOLD_MS := 300

EN_DASH := "–"
EM_DASH := "—"

WAS_ENDASH := false

-::
{
	global WAS_ENDASH
	if (A_PriorKey == "-" and A_TimeSincePriorHotkey < TIME_THRESHOLD_MS)
	{
		if (WAS_ENDASH)
		{
			Send "{BackSpace}"
			SendText EM_DASH
			WAS_ENDASH := false
		}
		else
		{
			Send "{BackSpace}"
			SendText EN_DASH
			WAS_ENDASH := true
		}
	}
	else
	{
		SendText "-"
		WAS_ENDASH := false
	}
}