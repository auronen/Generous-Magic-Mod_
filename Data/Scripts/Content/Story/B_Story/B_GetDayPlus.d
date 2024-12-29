// ******************************************************************
// B_GetDayPlus
// ------------
// liefert ab zwei Stunden vor Mitternacht
// den NÃƒâ€žCHSTEN Tag zurÃƒÂ¼ck.
// Verhindert dadurch, daÃƒÅ¸ ich z.B. um 23 59 h einen Auftrag bekomme,
// der "am nÃƒÂ¤chsten Tag" erfÃƒÂ¼llt werden soll und eine Minute spÃƒÂ¤ter
// bereits erfÃƒÂ¼llt ist.
// ******************************************************************

func int B_GetDayPlus()
{
	if (Wld_IsTime(22, 00, 23, 59))
	{
		return(Wld_GetDay() + 1);
	};

	return Wld_GetDay();
};
