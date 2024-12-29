// ##########################################################################
// ##
// ## Hier stehen alle Buchständermobsiscripte
// ##
// ##########################################################################

//*************************************
//	Buchständer in der Klosterbibliothek
//*************************************

const string Bookstand_01_S1_1 = "The Test of Fire";
const string Bookstand_01_S1_2 = "Though a novice may feel ready to submit to the Test of Magic, he may not necessarily be chosen. If, however, he has given his decision ample consideration and if he insists, he is accorded the right to demand the Test and no magician may deny it to him. But not only must he pass the Test of Magic, he must also find enlightenment through the fire. If he insists before the High Council, he shall be submitted to the TEST OF FIRE.";
const string Bookstand_01_S1_3 = "The Test should challenge the wisdom, strength and dexterity of the novice. Therefore he must pass three trials, each of which is set before him by a magician of the High Council, before taking the Oath of the Fire to join the pact with the fire.";
const string Bookstand_01_S1_4 = "Such is the will of Innos and so it shall be done.";
const string Bookstand_01_S1_5 = "The High Council";
func void Use_Bookstand_01_S1() // Buchständer in der Magierbibliothek
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		if (hero.guild == GIL_NOV)
		{
			KNOWS_FIRE_CONTEST = TRUE; // für die Prüfung des Feuers

			Log_CreateTopic(TOPIC_FireContest, LOG_MISSION);
			Log_SetTopicStatus(TOPIC_FireContest, LOG_RUNNING);
			B_LogEntry(TOPIC_FireContest, TOPIC_FireContest_1);
		};

		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, Bookstand_01_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLines(nDocID, 0, Bookstand_01_S1_2);

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_01_S1_3);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_01_S1_4);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_01_S1_5);
		Doc_Show(nDocID);
	};
};

//*************************************
//	Buchständer in der Geheimen Bibliothek
//*************************************
// --------------------------------------
var int FinalDragonEquipment_Once;
// --------------------------------------

const string FINALDRAGONEQUIPMENT_S1_1 = "... I hope the dome may protect the ore from the menace of Beliar. The King is naive enough to believe that we built the dome as protection against breakouts. Well, as long as such ruses enable us to fulfill our higher goals, let it be so. I can only hope we have enough time left to prepare for the fight. As soon as the dome around the Valley of Mines has been erected, I will use all the power at my disposal to intervene in the impeding fight.";
const string FINALDRAGONEQUIPMENT_S1_2 = "... I followed the instructions and simply poured Innos' holy water over a blank runestone on a rune table. The runestone was destroyed. I suspect this spell really is accessible only to the One.";
const string FINALDRAGONEQUIPMENT_S1_3 = "I have left the holy aura of Innos in the protection of the monastery. The abbot will take care of it until the One reveals himself.";
const string FINALDRAGONEQUIPMENT_S1_4 = "The Tears of Innos may have a vital part to play in the fight ahead. But it's too dangerous to keep them where all can see. I'd better leave them here in the library.";
const string FINALDRAGONEQUIPMENT_S1_5 = "You have to create a teleportation rune to reach the secret place. For that you need a blank runestone and a small bottle of holy water. You can use the rune to teleport into the room.";
const string FINALDRAGONEQUIPMENT_S1_6 = "I am now reasonably certain that the Tears of Innos are what the paladins of old used in the long forgotten ritual Consecration of the Sword. That means I should be able to use the little bottle I found to give additional strength to a consecrated weapon.";
const string FINALDRAGONEQUIPMENT_S1_7 = "From: Weapons of the dragon lord.";
const string FINALDRAGONEQUIPMENT_S1_8 = "To make an armor of dragon scales as hard as possible, the scales may be coated with the ore mined in the valley on the isle of Karynis.";
const string FINALDRAGONEQUIPMENT_S1_9 = "To make a blade worthy of a dragon lord, the blade should be steeped in dragon blood. Even 5 phials of the blood can give the steel unequalled sharpness and strength.";
const string FINALDRAGONEQUIPMENT_S1_10 = "Note: 'Karynis' probably refers to what is now known as Khorinis.";
func void Use_FINALDRAGONEQUIPMENT_S1() // Buchständer in der geheimen Bibliothek
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, FINALDRAGONEQUIPMENT_S1_1);
		Doc_PrintLines(nDocID, 0, "");

		if (hero.guild == GIL_KDF)
		{
			PlayerGetsAmulettOfDeath = TRUE;
			PLAYER_TALENT_RUNES[SPL_MasterOfDisaster] = TRUE;
			B_LogEntry(TOPIC_TalentRunes, TOPIC_TalentRunes_1);

			Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_2);
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_3);
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_4);
			Doc_Show(nDocID);
		}
		else if (hero.guild == GIL_PAL)
		{
			PAL_KnowsAbout_FINAL_BLESSING = TRUE;
			PLAYER_TALENT_RUNES[SPL_PalTeleportSecret] = TRUE;
			PrintScreen(PRINT_LearnPalTeleportSecret, -1, -1, FONT_Screen, 2);

			Log_CreateTopic(TOPIC_TalentRunes, LOG_NOTE);
			B_LogEntry(TOPIC_TalentRunes, TOPIC_TalentRunes_2);
			Log_AddEntry(TOPIC_TalentRunes, TOPIC_TalentRunes_3);

			Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_5);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_6);
			Doc_PrintLine(nDocID, 1, "");
			Doc_Show(nDocID);
		}
		else
		{
			PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] = TRUE;
			PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] = TRUE;

			PrintScreen(PRINT_LearnSmith, -1, -1, FONT_Screen, 2);
			Npc_SetTalentSkill(self, NPC_TALENT_SMITH, 1);
			Log_CreateTopic(TOPIC_TalentSmith, LOG_NOTE);
			B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_1);
			Log_AddEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_2);
			B_LogEntry(TOPIC_TalentSmith, TOPIC_TalentSmith_3);
			PlayerGetsFinalDJGArmor = TRUE;

			Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_7);
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_8);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_9);
			Doc_PrintLine(nDocID, 1, "");
			Doc_PrintLines(nDocID, 1, FINALDRAGONEQUIPMENT_S1_10);
			Doc_Show(nDocID);
		};

		if (FinalDragonEquipment_Once == FALSE)
		{
			B_GivePlayerXP(XP_FinalDragonEquipment);
			FinalDragonEquipment_Once = TRUE;
		};
	};
};
