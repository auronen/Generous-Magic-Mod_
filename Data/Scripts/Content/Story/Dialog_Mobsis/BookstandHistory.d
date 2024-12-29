// ##########################################################################
// ##
// ## Bookstand History
// ##
// ##########################################################################

// ----------------------
var int History_1_permanent;
// ----------------------
// ----------------------
var int History_2_permanent;
// ----------------------
// ----------------------
var int History_3_permanent;
// ----------------------

const string BookstandHistory1_S1_1 = "The Way of Battle";
const string BookstandHistory1_S1_2 = "The best defense is a good offense, at least against anything non-human. It's useless to parry animals' or monsters' attacks.";
const string BookstandHistory1_S1_3 = "It's better to keep the foe at bay with well-aimed blows and then launch a surprise combination attack.";
const string BookstandHistory1_S1_4 = "Of course, only experienced fighters can combine their moves. If you become a master in the art of battle, you can even use several combinations.";
func void Use_BookstandHistory1_S1() // Geschichtsbücher
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_RED_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_RED_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, BookstandHistory1_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLines(nDocID, 0, BookstandHistory1_S1_2);
		Doc_PrintLines(nDocID, 0, BookstandHistory1_S1_3);

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, BookstandHistory1_S1_4);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, "");
		Doc_Show(nDocID);

		if (History_1_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			History_1_permanent = TRUE;
		};
	};
};

const string BookstandHistory2_S1_1 = "The Island";
const string BookstandHistory2_S1_2 = "The harbor city of Khorinis lies on an island off the coast of the Kingdom Myrtana.";
const string BookstandHistory2_S1_3 = "The island owes much of its fame to the Valley of Mines. Its reputation is dubious, as for many years a magic barrier spanned the entire valley, which served as a prison for all convicts of the Realm.";
const string BookstandHistory2_S1_4 = "Thus the valley became a prison colony where the convicts mined the magic ore far below the ground.";
const string BookstandHistory2_S1_5 = "Outside of Khorinis lie a series of farms which use the good soil to plant wheat and turnips and breed sheep.";
const string BookstandHistory2_S1_6 = "For generations the largest farm has belonged to a landowner who rents the surrounding lands to other farmers.";
const string BookstandHistory2_S1_7 = "On the middle of the island is an ancient monastery of Innos, led by the Magicians of Fire. There they conduct research of magic and alchemy and press wine.";
func void Use_BookstandHistory2_S1() // Geschichtsbücher
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_RED_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_RED_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, BookstandHistory2_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, BookstandHistory2_S1_2);
		Doc_PrintLines(nDocID, 0, BookstandHistory2_S1_3);
		Doc_PrintLines(nDocID, 0, BookstandHistory2_S1_4);

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, BookstandHistory2_S1_5);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, BookstandHistory2_S1_6);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, BookstandHistory2_S1_7);

		Doc_Show(nDocID);

		if (History_2_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			History_2_permanent = TRUE;
		};
	};
};

const string BookstandHistory3_S1_1 = "The Law of the Island";
const string BookstandHistory3_S1_2 = "Wherever men come together, ways must be found to keep the peace - be it in the monastery, the city or on the landowner's farm.";
const string BookstandHistory3_S1_3 = "Any crime against the community is punished.";
const string BookstandHistory3_S1_4 = "The community forbids starting fights or joining brawls.";
const string BookstandHistory3_S1_5 = "Theft is also a crime that has consequences. The sheep are also protected by law.";
const string BookstandHistory3_S1_6 = "If a man strikes down another or murders him, he must expect to be judged on the spot.";
const string BookstandHistory3_S1_7 = "To evade this fate he must pay a heavy fine.";
const string BookstandHistory3_S1_8 = "In all large places, men of justice keep the peace. They will hear of any crime, and it is their duty to effect punishment and restore order.";
const string BookstandHistory3_S1_9 = "For whoever suffers from crime or witnesses such will not have a high opinion of the culprit.";
const string BookstandHistory3_S1_10 = "Of course, there are folks who care nothing for laws, particularly bandits and mercenaries.";
func void Use_BookstandHistory3_S1() // Geschichtsbücher
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_RED_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_RED_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, BookstandHistory3_S1_1);
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLines(nDocID, 0, BookstandHistory3_S1_2);
		Doc_PrintLines(nDocID, 0, BookstandHistory3_S1_3);
		Doc_PrintLines(nDocID, 0, BookstandHistory3_S1_4);
		Doc_PrintLines(nDocID, 0, BookstandHistory3_S1_5);
		Doc_PrintLines(nDocID, 0, "");

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, BookstandHistory3_S1_6);
		Doc_PrintLines(nDocID, 1, BookstandHistory3_S1_7);
		Doc_PrintLines(nDocID, 1, BookstandHistory3_S1_8);
		Doc_PrintLines(nDocID, 1, BookstandHistory3_S1_9);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, BookstandHistory3_S1_10);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, "");
		Doc_Show(nDocID);

		if (History_2_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			History_2_permanent = TRUE;
		};
	};
};
