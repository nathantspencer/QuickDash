#Requires AutoHotkey v2.0

; Adjust this as desired to make the time window between hypen keystrokes that should be
;combined into en or em dashes more or less lenient. The default is 400 milliseconds.
TIME_THRESHOLD_MS := 400

EN_DASH := "–"
EM_DASH := "—"

PRIOR_ENDASH := false
PRIOR_EMDASH := false

$-::
{
	Critical
	global PRIOR_ENDASH, PRIOR_EMDASH
	if (A_PriorKey == "-" && A_TimeSincePriorHotkey < TIME_THRESHOLD_MS && !PRIOR_EMDASH)
	{
		if (PRIOR_ENDASH)
		{
			Send "{BackSpace}"
			Send EM_DASH
			PRIOR_ENDASH := false
			PRIOR_EMDASH := true
		}
		else
		{
			Send "{BackSpace}"
			Send EN_DASH
			PRIOR_ENDASH := true
		}
	}
	else
	{
		Send "-"
		PRIOR_ENDASH := false
		PRIOR_EMDASH := false
	}
}