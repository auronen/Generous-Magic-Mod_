// -------------------------------------------------------------------------------------
//				Runensteine Wassermagie
// -------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------
//				Runen des ersten Kreises und ihre Ingredenzien
// -------------------------------------------------------------------------------------
const string Runemaking_KDW_CIRC1_S1_1 = "The Circles of Water";
const string Runemaking_KDW_CIRC1_S1_2 = "The runes of Water and the ingredients necessary for their creation.";
const string Runemaking_KDW_CIRC1_S1_3 = "Whirlwind";
const string Runemaking_KDW_CIRC1_S1_4 = "Wings of a bloodfly";
const string Runemaking_KDW_CIRC1_S1_5 = "Ice lance";
const string Runemaking_KDW_CIRC1_S1_6 = "Glacier quartz";
const string Runemaking_KDW_CIRC1_S1_7 = "Geyser";
const string Runemaking_KDW_CIRC1_S1_8 = "Aquamarine";
const string Runemaking_KDW_CIRC1_S1_9 = "Storm";
const string Runemaking_KDW_CIRC1_S1_10 = "Glacier quartz";
const string Runemaking_KDW_CIRC1_S1_11 = "Wings of a bloodfly";
const string Runemaking_KDW_CIRC1_S1_12 = "Waterfist";
const string Runemaking_KDW_CIRC1_S1_13 = "Aquamarine";
const string Runemaking_KDW_CIRC1_S1_14 = "Rock Crystal";
const string Runemaking_KDW_CIRC1_S1_15 = "To create a rune you always require ONE of the ingredients listed.";
const string Runemaking_KDW_CIRC1_S1_16 = "The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell.";
const string Runemaking_KDW_CIRC1_S1_17 = "Only when these prerequisites are fulfilled can he set to work on the rune table.";
func void Use_Runemaking_KDW_CIRC1_S1()
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

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Runemaking_KDW_CIRC1_S1_2);
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_3);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_4);
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_5);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_6);
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_7);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_8);
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_9);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_10);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_11);
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_12);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_13);
		Doc_PrintLine(nDocID, 0, Runemaking_KDW_CIRC1_S1_14);
		Doc_PrintLine(nDocID, 0, "");

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");

		Doc_PrintLines(nDocID, 1, Runemaking_KDW_CIRC1_S1_15);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Runemaking_KDW_CIRC1_S1_16);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Runemaking_KDW_CIRC1_S1_17);
		Doc_Show(nDocID);
	};
};

func void Use_Runemaking_KDW_CIRC2_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC3_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC4_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC5_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC6_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};
