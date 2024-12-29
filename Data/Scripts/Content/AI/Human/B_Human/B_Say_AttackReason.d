// ******************
// B_Say_AttackReason
// ******************

func void B_Say_AttackReason()
{
	// ------ wenn ich temp_hostile (= upset) bin ------
	if ((Wld_GetGuildAttitude(self.guild, other.guild) != ATT_HOSTILE)
	&& (Npc_GetAttitude(self, other) == ATT_HOSTILE))
	{
		// ------ nicht bei AR_Kill, da wird autom. auf perm hostile gesetzt ------
		if (self.aivar[AIV_ATTACKREASON] == AR_KILL)
		{
			return;
		};

		B_Say_Overlay(self, other, "$IGETYOUSTILL"); // Krieg' ich dich DOCH noch!
		return;
	};

	// ------ Enemy = Mensch oder Monster ------
	if (self.aivar[AIV_ATTACKREASON] == AR_GuildEnemy)
	{
		if (self.aivar[AIV_PARTYMEMBER] == TRUE)
		{
			var int rnd; rnd = Hlp_Random(100);
			if (rnd > 15)
			{
				return;
			};
		};

		if (other.guild < GIL_SEPERATOR_HUM)
		{
			if (C_PlayerIsFakeBandit(self, other) == TRUE)
			{
				B_Say_Overlay(self, other, "$ADDON_DIEBANDIT");
				Npc_SendPassivePerc(self, PERC_ASSESSFIGHTSOUND, self, other);
			}
			else if (C_PlayerIsFakePirate(self, other) == TRUE)
			{
				B_Say_Overlay(self, other, "$ADDON_DIRTYPIRATE");
				Npc_SendPassivePerc(self, PERC_ASSESSFIGHTSOUND, self, other);
			}
			else
			{
				B_Say_Overlay(self, other, "$DIEENEMY");
				Npc_SendPassivePerc(self, PERC_ASSESSFIGHTSOUND, self, other);
			};
		}
		else
		{
			if (self.voice == 9)
			{
				var int random; random = Hlp_Random(3);
				if (random < 1)
				{
					B_Say_Overlay(self, other, "$DIEMONSTER");
				}
				else if (random == 1)
				{
					B_Say_Overlay(self, other, "$ADDON_DIEMONSTER");
				}
				else
				{
					B_Say_Overlay(self, other, "$ADDON_DIEMONSTER2");
				};
			}
			else
			{
				B_Say_Overlay(self, other, "$DIEMONSTER"); // Da ist wieder eins von diesen Drecksviechern!
			};

			Npc_SendPassivePerc(self, PERC_ASSESSFIGHTSOUND, self, other);
		};

		return;
	};

	// ------ Spieler hat Item geklaut ------
	if (self.aivar[AIV_ATTACKREASON] == AR_Theft)
	{
		B_Say_Overlay(self, other, "$DIRTYTHIEF"); // Na warte, du dreckiger Dieb!
		return;
	};

	// ------ Spieler hat an Mob mit Besitzflag rumgefummelt (kann JEDES Mob sein) ------
	if (self.aivar[AIV_ATTACKREASON] == AR_UseMob)
	{
		B_Say_Overlay(self, other, "$HANDSOFF"); // Finger weg da!
		return;
	};

	// ------ Schaf wurde angegriffen oder getÃƒÂ¶tet (von Mensch oder Monster) ------
	if (self.aivar[AIV_ATTACKREASON] == AR_SheepKiller)
	{
		if (other.guild < GIL_SEPERATOR_HUM)
		{
			B_Say_Overlay(self, other, "$SHEEPKILLER"); // Der Mistkerl schlachtet unsere Schafe!
		}
		else
		{
			B_Say_Overlay(self, other, "$SHEEPKILLERMONSTER"); // Das verdammte Mistvieh friÃƒÅ¸t unsere Schafe!
		};

		return;
	};

	// ------ Mensch hat Mensch ermordet ------
	if (self.aivar[AIV_ATTACKREASON] == AR_HumanMurderedHuman)
	{
		B_Say_Overlay(self, other, "$YOUMURDERER"); // MÃƒÂ¶rder!
		Npc_SendPassivePerc(self, PERC_ASSESSFIGHTSOUND, self, other);
		return;
	};

	// ------ Monster hat Human getÃƒÂ¶tet ------
	if (self.aivar[AIV_ATTACKREASON] == AR_MonsterMurderedHuman)
	{
		return; // kein Kommenatar
	};

	// ------ Monster kÃƒÂ¤mpft gegen Human - ich helfe Human ------
	if (self.aivar[AIV_ATTACKREASON] == AR_MonsterVsHuman)
	{
		B_Say_Overlay(self, other, "$DIEMONSTER"); // Da ist wieder eins von diesen Drecksviechern!
		Npc_SendPassivePerc(self, PERC_ASSESSFIGHTSOUND, self, other);
		return;
	};

	// ------ GateGuards halten nicht-feindliches Monster auf ------
	if (self.aivar[AIV_ATTACKREASON] == AR_MonsterCloseToGate)
	{
		B_Say_Overlay(self, other, "$DIESTUPIDBEAST"); // Hier kommen keine Viecher rein!
		return;
	};

	// ------ TÃƒÂ¤ter hat mich verletzt ------
	if (self.aivar[AIV_ATTACKREASON] == AR_ReactToDamage)
	{
		// ------ (N)SC ist Monster ------
		// SC = verwandeltes Monster oder nicht-feindliches Monster
		if (other.guild > GIL_SEPERATOR_HUM)
		{
			B_Say_Overlay(self, other, "$YOUASKEDFORIT"); // Du hast es so gewollt!
			return;
		}
		else // TÃƒÂ¤ter = Human
		{
			B_Say_Overlay(self, other, "$YOUDAREHITME"); // Na warte, du Mistkerl!
			return;
		};
	};

	// ------ TÃƒÂ¤ter hat trotz zweimaliger Warnung Waffe nicht weggesteckt ------
	if (self.aivar[AIV_ATTACKREASON] == AR_ReactToWeapon)
	{
		B_Say_Overlay(self, other, "$YOUASKEDFORIT"); // Du hast es so gewollt!
		return;
	};

	// ------ Spieler ist unbefugt in meinem Raum ------
	if (self.aivar[AIV_ATTACKREASON] == AR_ClearRoom)
	{
		B_Say_Overlay(self, other, "$THENIBEATYOUOUTOFHERE"); // Dann muss ich dich eben rausPRÃƒÅ“GELN!
		return;
	};

	// ------ Spieler hat (verbotenen) Portalraum verlassen ------
	if (self.aivar[AIV_ATTACKREASON] == AR_LeftPortalRoom)
	{
		B_Say_Overlay(self, other, "$WHATDIDYOUDOINTHERE"); // Was hattest DU denn da drin zu suchen, he!?
		return;
	};

	// ------ Wache beendet Kampf, greift TÃƒÂ¤ter an ------
	if (self.aivar[AIV_ATTACKREASON] == AR_GuardStopsFight)
	{
		B_Say_Overlay(self, other, "$WILLYOUSTOPFIGHTING"); // Wollt ihr wohl damit aufhÃƒÂ¶ren!?
		return;
	};

	// ------ Wache zu Dieb gerufen ------
	if (self.aivar[AIV_ATTACKREASON] == AR_GuardCalledToThief)
	{
		return;
	};

	// ------ Wache zu PortalRaum gerufen ------
	if (self.aivar[AIV_ATTACKREASON] == AR_GuardCalledToRoom)
	{
		return;
	};

	// ------ kein Grund ------
	return;
};
