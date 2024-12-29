// -------------------------------------------------------------------------------------
//				Milten_03 // oben
// -------------------------------------------------------------------------------------
const string Bookstand_Milten_03_S1_1 = "It's late.";
const string Bookstand_Milten_03_S1_2 = "The collapse of the old mine brought about the downfall of the ore barons' mood.";
const string Bookstand_Milten_03_S1_3 = "Gomez is like a powder keg about to explode.";
const string Bookstand_Milten_03_S1_4 = "Corristo";
const string Bookstand_Milten_03_S1_5 = "He thinks the new guy's to blame for the collapse of the mine. That man sure is strange. But he'd better not show his face round here again.";
const string Bookstand_Milten_03_S1_6 = "Corristo";
const string Bookstand_Milten_03_S1_7 = "Gomez' temper is hotter than ever, and I think I can guess what he's planning. We must warn the Water Mages, before it's too late.";
const string Bookstand_Milten_03_S1_8 = "Corristo";
const string Bookstand_Milten_03_S1_9 = "Maybe we can ward off a disaster. It doesn't bear thinking about what would happen if the free mine ...";
func void Bookstand_Milten_03_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Milten_03_S1_1);
		Doc_PrintLines(nDocID, 0, Bookstand_Milten_03_S1_2);
		Doc_PrintLines(nDocID, 0, Bookstand_Milten_03_S1_3);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, Bookstand_Milten_03_S1_4);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Milten_03_S1_5);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, Bookstand_Milten_03_S1_6);

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Milten_03_S1_7);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, Bookstand_Milten_03_S1_8);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Milten_03_S1_9);
		Doc_Show(nDocID);
	};
};

// -------------------------------------------------------------------------------------
//				Milten_02 // unten
// -------------------------------------------------------------------------------------
const string Bookstand_Milten_02_S1_1 = "I've taken the liberty of making myself more comfortable. Who'd have thought I would someday be the only mage in the camp?";
const string Bookstand_Milten_02_S1_2 = "Well, I can't really say I'm glad to be back. In fact, I should be seeing about clearing out of here.";
const string Bookstand_Milten_02_S1_3 = "This expedition just isn't having any success.";
const string Bookstand_Milten_02_S1_4 = "The scrapers left yesterday. They took Diego with them - wouldn't surprise me if he did a runner.";
const string Bookstand_Milten_02_S1_5 = "He's not likely to swing a pickaxe anyhow.";
const string Bookstand_Milten_02_S1_6 = "Well, I'll use the time to learn a bit about the art of alchemy.";
const string Bookstand_Milten_02_S1_7 = "Milten";
func void Bookstand_Milten_02_S1()
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
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Milten_02_S1_1);
		Doc_PrintLines(nDocID, 0, Bookstand_Milten_02_S1_2);
		Doc_PrintLines(nDocID, 0, Bookstand_Milten_02_S1_3);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, "");

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Milten_02_S1_4);
		Doc_PrintLines(nDocID, 1, Bookstand_Milten_02_S1_5);
		Doc_PrintLines(nDocID, 1, Bookstand_Milten_02_S1_6);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, Bookstand_Milten_02_S1_7);
		Doc_Show(nDocID);
	};
};

// -------------------------------------------------------------------------------------
//				Milten_01 // unten
// -------------------------------------------------------------------------------------
func void Bookstand_Milten_01_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		//	if(Npc_IsPlayer(self))
		//	{
		//		B_SetPlayerMap(ItWr_Map_OldWorld);
		//	};

		var int Document;
		Document = Doc_CreateMap();
		Doc_SetPages(Document, 1);
		Doc_SetPage(Document, 0, "Map_OldWorld.tga", TRUE); // TRUE = scale to fullscreen
		Doc_SetLevel(Document, "OldWorld\OldWorld.zen");
		Doc_SetLevelCoords(Document, -78500, 47500, 54000, -53000);
		Doc_Show(Document);
	};
};

// -------------------------------------------------------------------------------------
//				Engor // unten
// -------------------------------------------------------------------------------------
const string Bookstand_Engor_01_S1_1 = "Stock";
const string Bookstand_Engor_01_S1_2 = "We found some stuff - nothing much useable. Remainder as follows:";
const string Bookstand_Engor_01_S1_3 = "3 crates of old rags";
const string Bookstand_Engor_01_S1_4 = "8 crates of rusty iron";
const string Bookstand_Engor_01_S1_5 = "4 crates of broken armor";
const string Bookstand_Engor_01_S1_6 = "5 crates of (stinking) leather and pelts";
const string Bookstand_Engor_01_S1_7 = "2 crates of pickaxes";
const string Bookstand_Engor_01_S1_8 = "3 crates of tools";
const string Bookstand_Engor_01_S1_9 = "16 crates of rocks (ore virtually nil)";
const string Bookstand_Engor_01_S1_10 = "1 crate of rusty razor blades";
const string Bookstand_Engor_01_S1_11 = "4 crates of broken crockery";
const string Bookstand_Engor_01_S1_12 = "56 water barrels";
const string Bookstand_Engor_01_S1_13 = "1 crate of something swampy (whatever it was, it's rotted)";
const string Bookstand_Engor_01_S1_14 = "Engor";
func void Bookstand_Engor_01_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		var int nDocID;

		nDocID = Doc_Create();
		Doc_SetPages(nDocID, 2);
		Doc_SetPage(nDocID, 0, "Book_Red_L.tga", 0);
		Doc_SetPage(nDocID, 1, "Book_Red_R.tga", 0);

		Doc_SetFont(nDocID, -1, FONT_Book);
		Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1);

		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, Bookstand_Engor_01_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Engor_01_S1_2);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Engor_01_S1_3);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Engor_01_S1_4);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Engor_01_S1_5);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Engor_01_S1_6);
		Doc_PrintLine(nDocID, 0, "");

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Engor_01_S1_7);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Engor_01_S1_8);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Engor_01_S1_9);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Engor_01_S1_10);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Engor_01_S1_11);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Engor_01_S1_12);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Engor_01_S1_13);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, Bookstand_Engor_01_S1_14);
		Doc_Show(nDocID);
	};
};
