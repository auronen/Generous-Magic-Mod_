//*************************************
//	BuchstÃƒÂ¤nder im Banditenlager
//*************************************

const string Bookstand_Addon_BL_S1_1 = "Mine";
const string Bookstand_Addon_BL_S1_2 = "Crimson: 79 gold nuggets received and melted down";
const string Bookstand_Addon_BL_S1_3 = "Scatty: Goods received for 250 gold";
const string Bookstand_Addon_BL_S1_4 = "Garaz: 6 gold nuggets received";
const string Bookstand_Addon_BL_S1_5 = "All guards: 9 gold nuggets received";
const string Bookstand_Addon_BL_S1_6 = "Camp:";
const string Bookstand_Addon_BL_S1_7 = "Raven's guards: 25 gold pieces";
const string Bookstand_Addon_BL_S1_8 = "Finn: 60 gold pieces";
const string Bookstand_Addon_BL_S1_9 = "Lennar: 40 gold pieces";
const string Bookstand_Addon_BL_S1_10 = "Emilio: 50 gold pieces";
const string Bookstand_Addon_BL_S1_11 = "Others: 20 gold pieces";
const string Bookstand_Addon_BL_S1_12 = "Huno, Fisk, Snaf: each according to goods";
const string Bookstand_Addon_BL_S1_13 = "Hunters: Let the leader handle this! Franco received 7 gold pieces";
func void Use_Bookstand_Addon_BL_S1()
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

		Doc_PrintLine(nDocID, 0, Bookstand_Addon_BL_S1_1);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Addon_BL_S1_2);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Addon_BL_S1_3);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Addon_BL_S1_4);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLines(nDocID, 0, Bookstand_Addon_BL_S1_5);
		Doc_PrintLine(nDocID, 0, "");
		Doc_PrintLine(nDocID, 0, "");

		Doc_PrintLines(nDocID, 0, "");

		Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(nDocID, 1, Bookstand_Addon_BL_S1_6);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_7);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_8);
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_9);
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_10);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_11);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_12);
		Doc_PrintLine(nDocID, 1, "");
		Doc_PrintLines(nDocID, 1, Bookstand_Addon_BL_S1_13);
		Doc_Show(nDocID);
	};
};

// ##########################################################################
// ##
// ## SteinPult
// ##
// ##########################################################################

// ----------------------
var int BookstandMayaHierchary_1_permanent;
var int BookstandMayaHierchary_2_permanent;
var int BookstandMayaHierchary_3_permanent;
var int BookstandMayaHierchary_4_permanent;
var int BookstandMayaHierchary_5_permanent;
var int BookstandMayaArt;
// ----------------------
func int C_CanReadBookStand()
{
	if ((PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	|| (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_2] == TRUE)
	|| (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_3] == TRUE))
	{
		return TRUE;
	};
};

const string BookstandMaya_1 = "...because only the GUARDIANS OF THE DEAD could call the ancestors.";
const string BookstandMaya_2 = "Their abscence hurts deeply. Without the counsel of the ancestors, we are at the mercy of our people.";
const string BookstandMaya_3 = "The HEALERS were sent to seal the portal and destroy the key. Only Adanos knows what happened to them or if they even achieved their goal.";
const string BookstandMaya_4 = "The WARRIOR CASTE has been destroyed by the wrath of Adanos. The heart of the old warrior prince is broken.";
const string BookstandMaya_5 = "Only the remaining PRIESTS raise hopes and preach constantly of the rebirth of our once magnificent city.";
const string BookstandMaya_6 = "However, we SCHOLARS know the bitter truth. JHARKENDAR has fallen and will fade in the river of time.";
const string BookstandMaya_7 = "RHADEMES was imprisoned forever in the temple of ADANOS, but the power of the sword was not broken.";
const string BookstandMaya_8 = "Its influence had become too great. The killings in the streets would not stop.";
const string BookstandMaya_9 = "The wrath of ADANOS ended everything. The sea raised itself over JHARKENDAR and flooded the whole city.";
const string BookstandMaya_10 = "Only the temples and structures in higher places were left almost untouched.";
const string BookstandMaya_11 = "The few who survived this catastrophe no longer had the strength to rebuild the city.";
const string BookstandMaya_12 = "And thus the fate of JHARKENDAR was sealed.";
const string BookstandMaya_13 = "QUARHODRON's age made it impossible for him to lead our army. And so the priests insisted on their right of command over him.";
const string BookstandMaya_14 = "They instructed him to resign his office and pass on the sword.";
const string BookstandMaya_15 = "The Council of Five was to determine his successor. However, the warrior caste denied the council a choice.";
const string BookstandMaya_16 = "The warriors would no longer submit to the Council of Five and selected his son RHADEMES as their new leader.";
const string BookstandMaya_17 = "Out of pride and confidence in his own flesh and blood, QUARHODRON decided to give in to them.";
const string BookstandMaya_18 = "He delivered the sword to his son in the hope that he would wield it with the same strong hand that he had himself.";
const string BookstandMaya_19 = "RHADEMES was weak. The will of the sword overcame him and made him its tool.";
const string BookstandMaya_20 = "Not even the healers could alleviate the suffering and the atrocities he brought upon our people in his blindness.";
const string BookstandMaya_21 = "The sword quickly recognized that the people were too weak to thwart its plans.";
const string BookstandMaya_22 = "Only the power of our ancestors could still withstand it.";
const string BookstandMaya_23 = "And so it had RHADEMES banish or execute all of the guardians of the dead, thus shattering all hope of release from this Evil.";
const string BookstandMaya_24 = "Thus, not a single guardian of the dead was left when the remaining four disempowered leaders of our people made the bitter decision to surrender JHARKENDAR.";
const string BookstandMaya_25 = "War raged in the streets as the healers set out to seal the only entrance to our valley forever.";
const string BookstandMaya_26 = "In these halls QUARHODRON, the high priest KHARDIMON and I myself discussed a way to defeat RHADEMES and the sword.";
const string BookstandMaya_27 = "QUARHODRON and KHARDIMON were of the opinion that RHADEMES could be defeated in battle with united strength. But I knew the power of the sword too well to believe that possible.";
const string BookstandMaya_28 = "So I made use of my right to veto the decision of the others. I decided instead to overcome RHADAMES with a ruse.";
const string BookstandMaya_29 = "QUARHODRON obeyed the decison of the Council. He proceeded to the temple of Adanos and sent for his son.";
const string BookstandMaya_30 = "His son's hatred had taken such form that RHADEMES stormed the temple in a wild frenzy to execute his father.";
const string BookstandMaya_31 = "He only recognized our plans when it was too late for him.";
const string BookstandMaya_32 = "QUARHODRON closed the holy chambers of the temple behind him and RHADEMES was trapped in the temple for all time.";
func void Use_BookstandMaya()
{
	if (BookstandMayaArt == 1) // Joly: ÃƒÂ¼berall objektieren!
	{
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_1);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_2);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_3);

		Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_4);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_5);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_6);
		Doc_PrintLines(StPl_nDocID, 1, "");
	}
	else if (BookstandMayaArt == 2) // Joly: objektieren egal wo, nur nicht Entrance.
	{
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_7);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_8);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_9);

		Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_10);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_11);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_12);

		if (SC_Knows_WeaponInAdanosTempel == FALSE)
		{
			B_GivePlayerXP(XP_Ambient);
			SC_Knows_WeaponInAdanosTempel = TRUE;
		};
	}
	else if (BookstandMayaArt == 3)
	{
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_13);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_14);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_15);

		Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_16);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_17);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_18);
	}
	else if (BookstandMayaArt == 4)
	{
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_19);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_20);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_21);
		Doc_PrintLine(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_22);
		Doc_PrintLine(StPl_nDocID, 0, "");

		Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_23);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_24);
		Doc_PrintLine(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_25);
	}
	else if (BookstandMayaArt == 5)
	{
		Doc_PrintLines(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_26);
		Doc_PrintLines(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_27);
		Doc_PrintLines(StPl_nDocID, 0, "");
		Doc_PrintLines(StPl_nDocID, 0, BookstandMaya_28);

		Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLines(StPl_nDocID, 1, "");

		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_29);
		Doc_PrintLines(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_30);
		Doc_PrintLines(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_31);
		Doc_PrintLines(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, BookstandMaya_32);

		Doc_PrintLines(StPl_nDocID, 1, "");
		Doc_PrintLines(StPl_nDocID, 1, "");
	};
};

func void InitUse_BookstandMaya()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		if (C_CanReadBookStand() == FALSE)
		{
			StPl_nDocID =
			Doc_Create(); // DocManager
			Doc_SetPages(StPl_nDocID, 2);
			Doc_SetPage(StPl_nDocID, 0, "Book_MayaGlyph_L.tga", 0);
			Doc_SetPage(StPl_nDocID, 1, "Book_MayaGlyph_R.tga", 0);
			Doc_SetFont(StPl_nDocID, -1, FONT_Book);
			Doc_SetMargins(StPl_nDocID, 0, 275, 20, 30, 20, 1);

			/*
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Oksefd nodnf Kwe");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Sebnejbuwd Weinafiwjf Ihweqpjrann");
			Doc_PrintLines(StPl_nDocID, 0, "Erfjkemvefj Hwoqmnyhan ckh");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Revfnbrebuiwe ewohjfribwe wefa");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Ejkhfshduhweb isdh Thjdkad");
			Doc_PrintLines(StPl_nDocID, 0, "asdkejhnead Gakjesdhad Uhand");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Ihdah Zanshen");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Fjewheege Egadegsmkd Ygec slaje ");
			Doc_PrintLines(StPl_nDocID, 0, "");
			Doc_PrintLines(StPl_nDocID, 0, "Esfj ewzbfujbwe Iuhdfb");

			Doc_SetMargins(StPl_nDocID, -1, 30, 20, 275, 20, 1);
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Siehdkhnfv Ghlorka");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Jomaghe Ohramja");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Bam klod Heknaud");
			Doc_PrintLines(StPl_nDocID, 1, "Wokan fadudeksJuh");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Jhdy funikha ");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Ehnep Fhika Oiritan");
			Doc_PrintLines(StPl_nDocID, 1, "Oiritan Gkoropjia Onham");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Filiothak Juhama Penn");
			Doc_PrintLines(StPl_nDocID, 1, "Vorsiehal Kiman Sik");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Fjewheege Egdgsmkd Ygc slje ");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "");
			Doc_PrintLines(StPl_nDocID, 1, "Oznishdz gdo sek ie");
		*/
			Doc_Show(StPl_nDocID);
			B_Say(self, self, "$CANTREADTHIS");
		}
		else
		{
			if (C_CanReadBookStand())
			{
				StPl_nDocID =
				Doc_Create(); // DocManager
				Doc_SetPages(StPl_nDocID, 2);
				Doc_SetPage(StPl_nDocID, 0, "Book_MayaRead_L.tga", 0);
				Doc_SetPage(StPl_nDocID, 1, "Book_MayaRead_R.tga", 0);
				Doc_SetFont(StPl_nDocID, -1, FONT_Book);
				Doc_SetMargins(StPl_nDocID, 0, 275, 20, 30, 20, 1);
				Use_BookstandMaya();
				Doc_Show(StPl_nDocID);
			};
		};
	};

	BookstandMayaArt = 0;
};

func void Use_BookstandMayaHierchary_01_S1()
{
	BookstandMayaArt = 1;
	InitUse_BookstandMaya();
	if ((BookstandMayaHierchary_1_permanent == FALSE)
	&& (C_CanReadBookStand()))
	{
		B_GivePlayerXP(XP_Ambient);
		BookstandMayaHierchary_1_permanent = TRUE;
	};
};

func void Use_BookstandMayaHierchary_02_S1()
{
	BookstandMayaArt = 2;
	InitUse_BookstandMaya();

	if ((BookstandMayaHierchary_2_permanent == FALSE)
	&& (C_CanReadBookStand()))
	{
		B_GivePlayerXP(XP_Ambient);
		BookstandMayaHierchary_2_permanent = TRUE;
	};
};

func void Use_BookstandMayaHierchary_03_S1()
{
	BookstandMayaArt = 3;
	InitUse_BookstandMaya();

	if ((BookstandMayaHierchary_3_permanent == FALSE)
	&& (C_CanReadBookStand()))
	{
		B_GivePlayerXP(XP_Ambient);
		BookstandMayaHierchary_3_permanent = TRUE;
	};
};

func void Use_BookstandMayaHierchary_04_S1()
{
	BookstandMayaArt = 4;
	InitUse_BookstandMaya();

	if ((BookstandMayaHierchary_4_permanent == FALSE)
	&& (C_CanReadBookStand()))
	{
		B_GivePlayerXP(XP_Ambient);
		BookstandMayaHierchary_4_permanent = TRUE;
	};
};

func void Use_BookstandMayaHierchary_05_S1()
{
	BookstandMayaArt = 5;
	InitUse_BookstandMaya();

	if ((BookstandMayaHierchary_5_permanent == FALSE)
	&& (C_CanReadBookStand()))
	{
		B_GivePlayerXP(XP_Ambient);
		BookstandMayaHierchary_5_permanent = TRUE;
	};
};
