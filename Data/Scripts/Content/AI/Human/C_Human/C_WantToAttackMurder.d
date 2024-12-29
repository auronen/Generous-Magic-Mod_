// ********************
// C_WantToAttackMurder
// ********************

func int C_WantToAttackMurder(var C_Npc slf, var C_Npc oth)
{
	// ------ ausgenommeme Gilden ------
	if ((slf.guild == GIL_DMT)
	|| (slf.guild == GIL_STRF)
	|| (slf.guild == GIL_DJG)
	// Addon: Banditen im Lager sollen auf Murder reagieren
	|| (slf.guild == GIL_BDT))
	{
		return FALSE;
	};

	// ------ NSC ignoriert Mord ------
	if (slf.aivar[AIV_IGNORE_Murder] == TRUE)
	{
		return FALSE;
	};

	// ------ TÃƒÂ¤ter war Player und ich bin NpcType_Friend ------
	if (Npc_IsPlayer(oth) && (slf.npctype == NpcType_Friend))
	{
		return FALSE;
	};

	// ------ MÃƒÂ¶rder hat guten Grund zu tÃƒÂ¶ten ------
	if (C_NpcHasAttackReasonToKill(oth))
	{
		return FALSE;
	};

	// ------ Torwachen bleiben stehen, memorizen aber News ------
	if (C_NpcIsGateGuard(slf))
	{
		return FALSE;
	};

	return TRUE;
};
