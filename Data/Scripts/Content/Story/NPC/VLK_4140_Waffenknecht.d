instance VLK_4140_Waffenknecht(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_WAFFENKNECHT;
	npctype							= NPCTYPE_OCAMBIENT;
	guild							= GIL_MIL;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 1;
	id								= 4140;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_B_Tough_Silas, BodyTex_B, ITAR_MIL_L);
	Mdl_SetModelFatness(self, 2);
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30); // Grenzen fÃƒÂ¼r Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1H_Mil_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_4140;
};

func void Rtn_Start_4140()
{
	TA_Smalltalk(08, 00, 23, 00, "OC_CENTER_03");
	TA_Sit_Campfire(23, 00, 08, 00, "OC_KNECHTCAMP_01");
};
