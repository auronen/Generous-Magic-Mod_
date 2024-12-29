// ##########################################################################
// ##
// ## Bookstand Animals
// ##
// ##########################################################################

// ----------------------
var int Animals_1_permanent;
// ----------------------
// ----------------------
var int Animals_2_permanent;
// ----------------------
// ----------------------
var int Animals_3_permanent;
// ----------------------

const string BookstandAnimals1_S1_1 = "Hunt and Prey";
const string BookstandAnimals1_S1_2 = "Every beast or creature has certain trophies that improve the wealth and glory of experienced hunters.";
const string BookstandAnimals1_S1_3 = "An experienced hunter knows all about the trophies of the prey and how to gut them.";
const string BookstandAnimals1_S1_4 = "Extract Teeth";
const string BookstandAnimals1_S1_5 = "Teeth are the weapons of many beasts and creatures. If you know how to extract them from your prey, wolves, snappers, shadowbeasts, swampsharks and trolls are the best targets.";
const string BookstandAnimals1_S1_6 = "Skinning";
const string BookstandAnimals1_S1_7 = "A talent experienced hunters value greatly, for many animals have pelts - sheep, wolves and shadowbeats, for example.";
const string BookstandAnimals1_S1_8 = "A hunter with this skill can also skin swampsharks and lurkers.";
const string BookstandAnimals1_S1_9 = "Extract Claws";
const string BookstandAnimals1_S1_10 = "An art to be used on all kinds of lizards, snappers, lurkers and shadowbeats.";
func void Use_BookstandAnimals1_S1() // TierbÃƒÂ¼cher
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

		Doc_PrintLine(nDocID, 0, BookstandAnimals1_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, BookstandAnimals1_S1_2);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, BookstandAnimals1_S1_3);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, BookstandAnimals1_S1_4);
		Doc_PrintLines(nDocID, 0, BookstandAnimals1_S1_5);

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, BookstandAnimals1_S1_6);
		Doc_PrintLines(nDocID, 1, BookstandAnimals1_S1_7);
		Doc_PrintLines(nDocID, 1, BookstandAnimals1_S1_8);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, BookstandAnimals1_S1_9);
		Doc_PrintLines(nDocID, 1, BookstandAnimals1_S1_10);
		Doc_Show(nDocID);

		if (Animals_1_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			Animals_1_permanent = TRUE;
		};
	};
};

const string BookstandAnimals2_S1_1 = "Hunt and Prey";
const string BookstandAnimals2_S1_2 = "Every beast or creature has certain trophies that improve the wealth and glory of experienced hunters.";
const string BookstandAnimals2_S1_3 = "Bloodflies";
const string BookstandAnimals2_S1_4 = "Two special skills are required to gut these flying devils.";
const string BookstandAnimals2_S1_5 = "Their wings can be removed and their stingers extracted.";
const string BookstandAnimals2_S1_6 = "Both arts should be used by experienced hunters to claim their trophies.";
const string BookstandAnimals2_S1_7 = "Field raiders and minecrawlers use mandibles to attack. Minecrawler mandibles are";
const string BookstandAnimals2_S1_8 = "particularly valuable, as they contain a secretion that increases magic powers.";
const string BookstandAnimals2_S1_9 = "However, it should be used sparingly, as the human body ceases to react to it over time.";
const string BookstandAnimals2_S1_10 = "Minecrawler plates are also popular. They can be used to make armor.";

func void Use_BookstandAnimals2_S1() // TierbÃƒÂ¼cher
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

		Doc_PrintLine(nDocID, 0, BookstandAnimals2_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, BookstandAnimals2_S1_2);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, BookstandAnimals2_S1_3);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, BookstandAnimals2_S1_4);
		Doc_PrintLines(nDocID, 0, BookstandAnimals2_S1_5);
		Doc_PrintLines(nDocID, 0, BookstandAnimals2_S1_6);

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, BookstandAnimals2_S1_7);
		Doc_PrintLines(nDocID, 1, BookstandAnimals2_S1_8);
		Doc_PrintLines(nDocID, 1, BookstandAnimals2_S1_9);
		Doc_PrintLines(nDocID, 1, BookstandAnimals2_S1_10);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, "");
		Doc_Show(nDocID);

		if (Animals_2_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			Animals_2_permanent = TRUE;
		};
	};
};

const string BookstandAnimals3_S1_1 = "Hunt and Prey";
const string BookstandAnimals3_S1_2 = "Every beast or creature has certain trophies that improve the wealth and glory of experienced hunters.";
const string BookstandAnimals3_S1_3 = "Fire Lizard";
const string BookstandAnimals3_S1_4 = "This beast is a lizard, but it can spit fire that will kill anyone venturing within a few paces of it.";
const string BookstandAnimals3_S1_5 = "Only those who have protection from fire can fight these beasts and take their valued tongues.";
const string BookstandAnimals3_S1_6 = "The Shadowbeast";
const string BookstandAnimals3_S1_7 = "The shadowbeast is an ancient loner and lives hidden in the woods.";
const string BookstandAnimals3_S1_8 = "There are very few of these creatures left, therefore they are no danger to humans unless they venture into their hunting grounds.";
const string BookstandAnimals3_S1_9 = "The horn on a shadowbeast's head is regarded as a valuable hunting trophy. A hunter must learn how to remove it properly";
const string BookstandAnimals3_S1_10 = "in order to claim this prize.";
func void Use_BookstandAnimals3_S1() // TierbÃƒÂ¼cher
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

		Doc_PrintLine(nDocID, 0, BookstandAnimals3_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, BookstandAnimals3_S1_2);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, BookstandAnimals3_S1_3);
		Doc_PrintLines(nDocID, 0, BookstandAnimals3_S1_4);
		Doc_PrintLines(nDocID, 0, BookstandAnimals3_S1_5);

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, BookstandAnimals3_S1_6);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, BookstandAnimals3_S1_7);
		Doc_PrintLines(nDocID, 1, BookstandAnimals3_S1_8);
		Doc_PrintLines(nDocID, 1, BookstandAnimals3_S1_9);
		Doc_PrintLines(nDocID, 1, BookstandAnimals3_S1_10);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLine(nDocID, 1, "");

		Doc_Show(nDocID);

		if (Animals_3_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			Animals_3_permanent = TRUE;
		};
	};
};
