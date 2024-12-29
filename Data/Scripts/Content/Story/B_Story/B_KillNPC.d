// ***************************************************
// B_KillNpc (NPC wird getÃƒÂ¶tet und bleibt liegen)
// ***************************************************

func void B_KillNpc(var int npcInstance)
{
	var C_Npc npc;
	npc = Hlp_GetNpc(npcInstance);

	if ((Hlp_IsValidNpc(npc))
	&& (!Npc_IsDead(npc)))
	{
		npc.flags = 0;

		CreateInvItem(npc, ItMi_OldCoin); // Mission-Item, das verhindert, daÃƒÅ¸ die Toten entfernt werden

		Npc_ChangeAttribute(npc, ATR_HITPOINTS, -npc.attribute[ATR_HITPOINTS_MAX]);
	};
};
