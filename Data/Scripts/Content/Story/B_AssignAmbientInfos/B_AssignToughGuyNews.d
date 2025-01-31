// ************************************************************
// 						ToughGuy - NEWS
// ************************************************************
instance DIA_ToughGuy_NEWS(C_INFO)
{
	//npc				= alle; // wird in ZS_Talk zugeordnet
	nr				= 1;
	condition		= DIA_ToughGuy_NEWS_Condition;
	information		= DIA_ToughGuy_NEWS_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_ToughGuy_NEWS_Condition()
{
	if ((Npc_IsInState(self, ZS_Talk))
	&& (self.aivar[AIV_LastFightAgainstPlayer] != FIGHT_NONE)
	&& (self.aivar[AIV_LastFightComment] == FALSE))
	{
		return TRUE;
	};
};

func void DIA_ToughGuy_NEWS_Info()
{
	if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
	{
		B_Say(self, other, "$TOUGHGUY_ATTACKLOST"); // Okay, okay, du bist der Bessere von uns beiden! Was willst du?
	}
	else if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_WON)
	{
		B_Say(self, other, "$TOUGHGUY_ATTACKWON"); // (selbstgefÃƒÂ¤llig) Ich nehme an, du hast mittlerweile begriffen, wer von uns beiden der StÃƒÂ¤rkere ist... Was willst du?
	}
	else // FIGHT_CANCEL
	{
		B_Say(self, other, "$TOUGHGUY_PLAYERATTACK"); // Ich dachte, du wolltest dich mit mir anlegen. Hast du's dir anders ÃƒÂ¼berlegt? Willst doch lieber REDEN, was? (lacht)
	};

	// ------ AIVAR resetten ------
	self.aivar[AIV_LastFightComment] = TRUE;

	// ---------Skinner Addon Hack-----------------
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Skinner))
	{
		AI_Output(self, other, "DIA_Addon_Skinner_ToughguyNews_08_00"); //... but I don't want to talk to you...

		AI_StopProcessInfos(self);
		B_Attack(self, other, AR_NONE, 1);
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignToughGuyNEWS(var C_Npc slf)
{
	DIA_ToughGuy_NEWS.npc = Hlp_GetInstanceID(slf);
};
