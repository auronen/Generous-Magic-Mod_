// ****************
// B_GetPlayerCrime
// ****************

func int B_GetPlayerCrime(var C_Npc slf)
{
	// EXIT if...

	// ------ wenn SchlÃƒÂ¤gerei lÃƒÂ¤nger als 2 Tage her, Crime "verjÃƒÂ¤hrt" ------
	if (slf.aivar[AIV_NpcSawPlayerCommit] <= CRIME_ATTACK) // WICHTIG! Alles was weniger schlimm ist, als Attack darf hÃƒÂ¶chstens dieselbe VerjÃƒÂ¤hrungszeit haben!
	{
		if (slf.aivar[AIV_NpcSawPlayerCommitDay] < (Wld_GetDay() - 2))
		{
			return CRIME_NONE;
		};
	};

	// ------ wenn seit der Tat Absolution erteilt wurde, ist die Tat vergeben ------
	if (slf.aivar[AIV_CrimeAbsolutionLevel] < B_GetCurrentAbsolutionLevel(slf))
	{
		// FÃƒÂ¼r NSCs, die nicht City/Monastery/Farm angehÃƒÂ¶ren,
		// ist B_GetCurrentAbsolutionLevel immer 0,
		// somit ist die Abfrage hier immer false

		return CRIME_NONE;
	};

	// FUNC

	// ------ Inhalt der AIV(=Crime) zurÃƒÂ¼ckliefern ------
	return slf.aivar[AIV_NpcSawPlayerCommit];
};
