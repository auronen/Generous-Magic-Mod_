// ****************************************************
// B_AssessMurder
// --------------
// Wird durch Wahrnehmung PERC_ASSESSMURDER aufgerufen
// wird ÃƒÅ“BERALL her (AUCH aus ZS_Attack) aufgerufen
// Ãƒâ€žNDERT evtl. ATTACKREASON + ÃƒÂ¼berschreibt evtl. CRIME
// reagiert bei Mord an Human oder Mord an Schafen
// ****************************************************

func void B_AssessMurder()
{
	// EXIT if...

	// ------ ich war selber der MÃƒÂ¶rder ------
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(other))
	{
		return;
	};

	// ------ DISTANZ zu TÃƒÂ¤ter UND auch zu Opfer grÃƒÂ¶ÃƒÅ¸er als PERC_DIST_INTERMEDIAT (AssesMurder-Wahrnehmung steht auf DIST_MAX) ------
	if ((Npc_GetDistToNpc(self, other) > PERC_DIST_INTERMEDIAT)
	&& (Npc_GetDistToNpc(self, victim) > PERC_DIST_INTERMEDIAT))
	{
		return;
	};

	// ------- Burgzinnenwachen sollen sich nicht zu Tode stÃƒÂ¼rzen, etc. ------
	if ((Npc_GetHeightToNpc(self, other) > PERC_DIST_HEIGHT)
	&& (Npc_GetHeightToNpc(self, victim) > PERC_DIST_HEIGHT))
	{
		return;
	};

	// ------ TÃƒÂ¤ter hinter Wand -------
	if ((!Npc_CanSeeNpcFreeLOS(self, other))
	&& (!Npc_CanSeeNpcFreeLOS(self, victim)))
	{
		return;
	};

	// ------ Meine Gilde feindlich zu TÃƒÂ¤ter-Gilde ------ // Opfer ist tot!
	if (B_AssessEnemy())
	{
		return; // angreifen oder fliehen
	};

	// ------ Sonderfall: Schafe ------
	if ((victim.guild == GIL_SHEEP)
	&& (victim.aivar[AIV_ToughGuy] == FALSE))
	{
		if (C_WantToAttackSheepKiller(self, other))
		{
			B_Attack(self, other, AR_SheepKiller, 0); // angreifen oder fliehen
			return;
		}
		else
		{
			// ------ Torwachen greifen nicht an, memorizen aber News ------
			if (C_NpcIsGateGuard(self))
			{
				B_MemorizePlayerCrime(self, other, CRIME_SHEEPKILLER);
			};
		};
	};

	// ------ TÃƒÂ¤ter UND Opfer BEIDE Monster ------
	if ((other.guild > GIL_SEPERATOR_HUM)
	&& (victim.guild > GIL_SEPERATOR_HUM))
	{
		return;
	};

	// ------ TÃƒÂ¤ter Monster (Opfer Human) ------
	if (other.guild > GIL_SEPERATOR_HUM)
	{
		B_Attack(self, other, AR_MonsterMurderedHuman, 0); // angreifen oder fliehen
		return;
	};

	// ------ Opfer Monster (TÃƒÂ¤ter Human) ------
	if (victim.guild > GIL_SEPERATOR_HUM)
	{
		return;
	};

	// --------------------------------------------------------
	// ------ Enemy-Override-Blockierung wird aufgehoben ------
	// --------------------------------------------------------

	if (self.aivar[AIV_EnemyOverride] == TRUE)
	{
		self.aivar[AIV_EnemyOverride] = FALSE;

		Npc_PerceiveAll(self);
		Npc_GetNextTarget(self);

		if ((Hlp_IsValidNpc(other))
		&& (!C_NpcIsDown(other)))
		{
			B_Attack(self, other, AR_GuildEnemy, 0);
			return;
		};

		return;
	};

	// ------ TÃƒÂ¤ter und Opfer BEIDE Human ------
	// + Ich war HOSTILE oder ANGRY zum Opfer
	// + Ich bin FRIENDLY oder NEUTRAL zum MÃƒÂ¶rder
	if (((Npc_GetAttitude(self, victim) == ATT_HOSTILE) || (Npc_GetAttitude(self, victim) == ATT_ANGRY))
	&& ((Npc_GetAttitude(self, other) == ATT_FRIENDLY) || (Npc_GetAttitude(self, other) == ATT_NEUTRAL)))
	{
		return;
	};

	// ------ TÃƒÂ¤ter war Player und ich bin NpcType_Friend ------
	if (Npc_IsPlayer(other) && (self.npctype == NpcType_Friend))
	{
		return;
	};

	// ------- NSC ignoriert Mord ------
	if (!C_WantToAttackMurder(self, other))
	{
		// ------ Torwachen greifen nicht an, memorizen aber News ------
		if (C_NpcIsGateGuard(self))
		{
			B_MemorizePlayerCrime(self, other, CRIME_MURDER);
		};

		return;
	};

	// ------ DropDeadAnkKill - NSCs werden ignoriert ------
	if ((other.aivar[AIV_DropDeadAndKill] == TRUE)
	|| (victim.aivar[AIV_DropDeadAndKill] == TRUE))
	{
		return;
	};

	// ------ Folgende Human-Gilden dÃƒÂ¼rfen getÃƒÂ¶tet werden -----
	if ((victim.guild == GIL_DMT) // self abgefragt in C_WantToAttackMurder (s.o.)
	|| ((victim.guild == GIL_BDT)
	&& !C_NpcBelongsToBL(victim))) // Addon: Lager Banditen dÃƒÂ¼rfen nicht getÃƒÂ¶tet werden!
	{
		return;
	};

	// FUNC

	B_Attack(self, other, AR_HumanMurderedHuman, 0); // angreifen oder fliehen
	return;
};
