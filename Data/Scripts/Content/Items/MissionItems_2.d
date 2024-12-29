// Missionitems 2. Kapitel

//********************************************
//	Xardas´ Stein des Wissens liegt im alten Demonenbeschwörerturm auf dem Tisch in seinem alten Studierzimmer!
//********************************************

instance ItMi_StoneOfKnowlegde_MIS(C_Item)
{
	name						= "Stone of Knowledge";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_StoneOfKnowlegde_MIS.3DS";
	material					= MAT_STONE;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

//**********************************************************************************
//	BRIEF von Garond an Lord Hagen
// ----------------------------------------------------------------------------------

instance ItWr_PaladinLetter_MIS(C_Item)
{
	name						= "Letter";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UsePaladinLetter;

	value						= 0;

	description					= "A letter to Lord Hagen";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string PaladinLetter_1 = "Lord Hagen!";
const string PaladinLetter_2 = "The expedition to the Valley of Mines failed. We suffered many losses. The survivors are trapped in the castle, surrounded by orcs.";
const string PaladinLetter_3 = "We have been attacked by dragons many times. They have devastated the lands around the castle. With Innos' help we shall prevail until reinforcements arrive. A sortie is impossible.";
const string PaladinLetter_4 = "May Innos keep us all.";
const string PaladinLetter_5 = "Garond";
func void UsePaladinLetter()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PaladinLetter_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, PaladinLetter_2);
				Doc_PrintLines	(nDocID, 0, PaladinLetter_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PaladinLetter_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, PaladinLetter_5);
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Schmuggelbrief von Milten an Gorn
// ----------------------------------------------------------------------------------

instance ItWr_LetterForGorn_MIS(C_Item)
{
	name						= "Letter";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseLetterForGorn;

	value						= 0;

	description					= "Milten's Note to Gorn";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string LetterForGorn_1 = "Gorn!";
const string LetterForGorn_2 = "Garond has agreed to set you free - for 1000 pieces of gold.";
const string LetterForGorn_3 = "So, if you have any gold stacked away somewhere, now would be a good time to reveal it.";
const string LetterForGorn_4= "Milten ";
func void UseLetterForGorn()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, LetterForGorn_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, LetterForGorn_2);
				Doc_PrintLines	(nDocID, 0, LetterForGorn_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, LetterForGorn_4);
	Doc_Show(nDocID);
};

//********************************************
//	Kerkerschlüssel der Burg im Minental
//********************************************

instance ItKe_PrisonKey_MIS(C_Item)
{
	name						= "Dungeon Key";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "The key to the dungeon";					count[2] = 0;
	text[3]						= "in the castle.";								count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//********************************************
//	Schlüssel Erzlager der Burg im Minental
//********************************************
instance ItKe_OC_Store(C_Item)
{
	name						= "Store Key";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "The key to the store room";				count[2] = 0;
	text[3]						= "in the castle.";								count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//********************************************
//	Schlüssel Erzbaron Flur der Burg im Minental
//********************************************
instance ITKE_ErzBaronFlur(C_Item)
{
	name						= "Door Key";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= "For the first door.";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "There is a name engraved on it.";					count[2] = 0;
	text[3]						= "Gomez";										count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//********************************************
//	Schlüssel Erzbaron Raum der Burg im Minental
//********************************************
instance ITKE_ErzBaronRaum(C_Item)
{
	name						= "Door Key";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= "For the second door.";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "There is a name engraved on it.";					count[2] = 0;
	text[3]						= "Gomez";										count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//********************************************
//	Der Schatz von Gorn
//********************************************

instance ItMi_GornsTreasure_MIS(C_Item)
{
	name						= "Leather Satchel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_METAL;

	scemeName					= "MAPSEALED";
	on_state[0]					= UseGornsTreasure;

	value						= 250;

	description					= "Gorn's leather bag.";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseGornsTreasure()
{
	B_PlayerFindItem(ItMi_Gold, 250);
	Gorns_Beutel = TRUE;
};

//**********************************************************************************
//	Schreiben von Silvestro
// ----------------------------------------------------------------------------------

instance ItWr_Silvestro_MIS(C_Item)
{
	name						= "Note";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseItwr_Silvestro;

	value						= 0;

	description					= "Silvestro's Note";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string Itwr_Silvestro_1 = "From the King's paladin Silvestro";
const string Itwr_Silvestro_2 = "Another day of scraping awaits. Today we intend to break through the wall and dig deeper into the rock.";
const string Itwr_Silvestro_3 = "I've got a bad feeling about this, so I'm going to have the ore hidden away.";
const string Itwr_Silvestro_4 = "Diego's the only one of us who knows his way round here. I have to trust him. He'll take the chests to safety - but I'm not letting him go alone.";
const string Itwr_Silvestro_5 = "The ore must be protected at all costs, so I'm sending two knights to go with Diego.";
const string Itwr_Silvestro_6 = "Long live the King.";
const string Itwr_Silvestro_7 = "Silvestro";
func void UseItwr_Silvestro()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, Itwr_Silvestro_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Itwr_Silvestro_2);
				Doc_PrintLines	(nDocID, 0, Itwr_Silvestro_3);
				Doc_PrintLines	(nDocID, 0, Itwr_Silvestro_4);
				Doc_PrintLines	(nDocID, 0, Itwr_Silvestro_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Itwr_Silvestro_6);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Itwr_Silvestro_7);
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Krallen des Rudelführers
// ----------------------------------------------------------------------------------
instance ItAt_ClawLeader(C_Item)
{
	name						= "Snapper Claws";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_Claw.3DS";
	material					= MAT_LEATHER;

	value						= 100;

	description					= "Leader of the Pack's Claws";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//**********************************************************************************
//	Olavs Beutel
// ----------------------------------------------------------------------------------
instance ItSe_Olav(C_Item)
{
	name						= "Leather Satchel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_METAL;

	scemeName					= "MAPSEALED";
	on_state[0]					= UseOlav;

	value						= 25;

	description					= "Olav's bag";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "There are a few coins jingling inside.";				count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseOlav()
{
	B_PlayerFindItem(ItMi_Gold, 25);
};

/******************************************************************************************/
instance ItMi_GoldPlate_MIS(C_Item)
{
	name						= "Gold Plate";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_GoldPlate.3DS";
	material					= MAT_METAL;

	value						= Value_GoldPlate;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//********************************************
//	Schlüssel Erzlager der Burg im Minental
//********************************************
instance ItKe_Pass_MIS(C_Item)
{
	name						= "Pass Key";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= "A small key.";
	text[0]						= "";											count[0] = 0;
	text[1]						= "Opens the gate to the pass.";						count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//********************************************
//	Schlüssel Bromor
//********************************************
instance ItKe_Bromor(C_Item)
{
	name						= "Bromor's Key";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= "The key to the hotel";
	text[0]						= "";											count[0] = 0;
	text[1]						= "room key.";						count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//********************************************
//	Schlüssel Runenstein
//********************************************
instance ITKE_RUNE_MIS(C_Item)
{
	name						= "Key";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= "A small key to a chest.";
	text[0]						= "";											count[0] = 0;
	text[1]						= "The chest this key belongs to";					count[1] = 0;
	text[2]						= "is under a bridge.";					count[2] = 0;
	text[3]						= "It contains a runestone.";				count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//**********************************************************************************
//	Bloodfly Stachel ausschlürfen lernen
// ----------------------------------------------------------------------------------
instance ItWr_Bloody_MIS(C_Item)
{
	name						= "Note";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseBloodMIS;

	value						= 0;

	description					= "Bloodflies' Venom";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string BloodMIS_1 = "The stinger of a bloodfly contains a deadly venom that no person of sane mind would ever take.";
const string BloodMIS_2 = "Unless he knows the art of removing the stinger and the following rule.";
const string BloodMIS_3 = "The stinger is cut open tidily by running a sharp blade from the tip to the shaft.";
const string BloodMIS_4 = "The upper skin layer is removed. The exposed tissue is cut open around the glands.";
const string BloodMIS_5 = "The special juice of the tissue has healing properties.";
const string BloodMIS_6 = "However, the human body grows immune to the healing potion in time.";
const string BloodMIS_7 = "Damarok";
func void UseBloodMIS()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, BloodMIS_1);
				Doc_PrintLines	(nDocID, 0, BloodMIS_2);
				Doc_PrintLines	(nDocID, 0, BloodMIS_3);
				Doc_PrintLines	(nDocID, 0, BloodMIS_4);
				Doc_PrintLines	(nDocID, 0, BloodMIS_5);
				Doc_PrintLines	(nDocID, 0, BloodMIS_6);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, BloodMIS_7);
	Doc_Show(nDocID);

	if (Knows_Bloodfly == FALSE)
	{
		Knows_Bloodfly = TRUE;
		Log_CreateTopic(Topic_Bonus, LOG_NOTE);
		B_LogEntry(Topic_Bonus, Topic_Bonus_5);
		B_GivePlayerXP(XP_Ambient);
	};
};

//**********************************************************************************
//	Brief von Lutero
// ----------------------------------------------------------------------------------

instance ItWr_Pfandbrief_MIS(C_Item)
{
	name						= "Note of Debenture";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UsePfandbrief;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string Pfandbrief_1 = "For payment of outstanding debts a";
const string Pfandbrief_2 = "pawned item shall be accepted, whose value";
const string Pfandbrief_3 = "equals that of the debts.";
const string Pfandbrief_4 = "Pawned: A decorated gold chalice";
const string Pfandbrief_5 = "of the Blood Chalice collection";
const string Pfandbrief_6 = "signed";
const string Pfandbrief_7 = "Lutero, merchant ";
const string Pfandbrief_8 = "Lehmar, pawnbroker";
func void UsePfandbrief()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Pfandbrief_1);
				Doc_PrintLine	(nDocID, 0, Pfandbrief_2);
				Doc_PrintLine	(nDocID, 0, Pfandbrief_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Pfandbrief_4);
				Doc_PrintLines	(nDocID, 0, Pfandbrief_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Pfandbrief_6);
				Doc_PrintLine	(nDocID, 0, Pfandbrief_7);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Pfandbrief_8);
	Doc_Show(nDocID);
};

instance ItWr_Map_OldWorld_Oremines_MIS(C_Item)
{
	name						= "Garond's Mine Map";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Map_OldWorld_Oremines;

	value						= 50;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Map_OldWorld_Oremines()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_OldWorld_Oremines_MIS);
	};

	var int Document;
	Document = Doc_CreateMap();
	Doc_SetPages(Document, 1);
	Doc_SetPage(Document, 0, "Map_OldWorld_Oremines.tga", TRUE); // TRUE = scale to fullscreen
	Doc_SetLevel(Document, "OldWorld\OldWorld.zen");
	Doc_SetLevelCoords(Document, -78500, 47500, 54000, -53000);
	Doc_Show(Document);
};

//**********************************************************************************
//	Ruf des Dominique
// ----------------------------------------------------------------------------------

instance ItWr_Manowar(C_Item)
{
	name						= "Text";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseManowar;

	value						= 0;

	description					= "Song lyrics.";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string Manowar_1 = "Dominique's Cry";
const string Manowar_2 = "We shall reap His glory.";
const string Manowar_3 = "Innos stands by me and my brothers.";
const string Manowar_4 = "I will slay all who would stop me like sheep";
const string Manowar_5 = "for He is the fire inside my heart.";
const string Manowar_6 = "My blade serves Him alone.";
const string Manowar_7 = "On this day His name will echo forth.";
const string Manowar_8 = "Any man who opposes me";
const string Manowar_9 = "will die at my hand";
const string Manowar_10 = "for I am a warrior of Innos.";
func void UseManowar()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Manowar_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Manowar_2);
				Doc_PrintLines	(nDocID, 0, Manowar_3);
				Doc_PrintLines	(nDocID, 0, Manowar_4);
				Doc_PrintLines	(nDocID, 0, Manowar_5);
				Doc_PrintLines	(nDocID, 0, Manowar_6);
				Doc_PrintLines	(nDocID, 0, Manowar_7);
				Doc_PrintLines	(nDocID, 0, Manowar_8);
				Doc_PrintLines	(nDocID, 0, Manowar_9);
				Doc_PrintLines	(nDocID, 0, Manowar_10);

	Doc_Show(nDocID);
};

//**********************************************************************************
//	BRIEF der Wassermagier
// ----------------------------------------------------------------------------------

instance ItWr_KDWLetter(C_Item)
{
	name						= "Message";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseKDWLetter;

	value						= 0;

	description					= "A message.";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string KDWLetter_1 = "We have left the camp. Now that the Barrier has fallen, we will seek out the center of the destruction. Maybe we will find there the answers we have sought for so many years. Adanos alone knows where our journey will take us.";
const string KDWLetter_2 = "Adanos is with us.";
const string KDWLetter_3 = "Saturas";
func void UseKDWLetter()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, KDWLetter_1);
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, KDWLetter_2);
				Doc_PrintLine	(nDocID, 0, KDWLetter_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	BRIEF von Gilbert
// ----------------------------------------------------------------------------------

instance ItWr_GilbertLetter(C_Item)
{
	name						= "Note";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseGilbertLetter;

	value						= 0;

	description					= "A message.";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string GilbertLetter_1 = "I'm fed up. I've been hiding here long enough. And if I heard rightly, the Barrier's finally fallen.";
const string GilbertLetter_2 = "It seems unlikely anyone will look for me now. I've had enough of this cave and the whole damn valley. It's time I went home.";
const string GilbertLetter_3 = "Gilbert";
func void UseGilbertLetter()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, FONT_Book); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, GilbertLetter_1);
				Doc_PrintLines	(nDocID, 0, GilbertLetter_2);
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, GilbertLetter_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

instance ItRi_Tengron(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Hp_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Tengron;
	on_unequip					= UnEquip_ItRi_Tengron;

	value						= Value_Ri_Hp;

	description					= NAME_ADDON_TengronsRing;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_HP;								count[2] = Ri_Hp;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Tengron()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + Ri_Hp;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + Ri_Hp;
};

func void UnEquip_ItRi_Tengron()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - Ri_Hp;
	if (self.attribute [ATR_HITPOINTS] > Ri_Hp + 1)
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - Ri_Hp;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 2;
	};
};
