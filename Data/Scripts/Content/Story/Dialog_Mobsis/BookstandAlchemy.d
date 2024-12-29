//##########################################################################
//##
//##	Bookstand Alchemie
//##
//##########################################################################

//----------------------
var int ALchemy_1_permanent;
//----------------------
//----------------------
var int ALchemy_2_permanent;
//----------------------
//----------------------
var int ALchemy_3_permanent;
//----------------------



const string BookstandALCHEMY1_S1_1 = "Potions of Magic Power";
const string BookstandALCHEMY1_S1_2 = "and Ingredients";
const string BookstandALCHEMY1_S1_3 = "2 fire nettles";
const string BookstandALCHEMY1_S1_4 = "2 fireweeds";
const string BookstandALCHEMY1_S1_5 = "2 fire roots";
const string BookstandALCHEMY1_S1_6 = "All work at the alchemist's bench requires a laboratory flask which is used up in the process.";
const string BookstandALCHEMY1_S1_7 = "To brew any healing potions or potions to strengthen magic power, you need a special ingredient and a plant:";
const string BookstandALCHEMY1_S1_8 = "Meadow Knotweed";
const string BookstandALCHEMY1_S1_9 = "To brew any potions that effect permanent changes to the body or spirit, you need a certain plant:";
const string BookstandALCHEMY1_S1_10 = "King's Sorrel";

//GMM
const string GMM_Bookstand_Alchemy_Berry = "1 Forest Berry";
const string GMM_Bookstand_Alchemy_BlueElder = "1 Blue Elder";
const string GMM_Bookstand_Alchemy_Info_1 = "To brew any healing potions or potions to strengthen magic power, you need a proper mixture of plants:";
const string GMM_Bookstand_Alchemy_Info_2 = "healing plants and fire plants, combined with Forest Berry for small and Blue Elder for medium potions.";
const string GMM_Bookstand_Alchemy_Info_3 = "Stronger potions call for Meadow Knotweed.";
const string GMM_Bookstand_Alchemy_Info_4 = "To brew any potions that effect permanent changes to the body or spirit, you need two plants:";
const string GMM_Bookstand_Alchemy_Info_5 = "King's Sorrel and Meadow Knotweed.";

FUNC VOID Use_BookstandALCHEMY1_S1()		//AlchemiebÃƒÂ¼cher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY1_S1_1);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY1_S1_2						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, NAME_ManaPotion1						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY1_S1_3						);
					Doc_PrintLine	( nDocID,  0, GMM_Bookstand_Alchemy_Berry							);
					Doc_PrintLine	( nDocID,  0, ""							);
					Doc_PrintLine	( nDocID,  0, NAME_ManaPotion2						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY1_S1_4					);
					Doc_PrintLine	( nDocID,  0, GMM_Bookstand_Alchemy_BlueElder						);
					Doc_PrintLine	( nDocID,  0, ""							);
					Doc_PrintLine	( nDocID,  0, NAME_ManaPotion3						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY1_S1_5						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY1_S1_8						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY1_S1_6	); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, GMM_Bookstand_Alchemy_Info_1			);
					Doc_PrintLines	( nDocID,  1, GMM_Bookstand_Alchemy_Info_2		);
					Doc_PrintLines	( nDocID,  1, GMM_Bookstand_Alchemy_Info_3						);
					Doc_PrintLines	( nDocID,  1, GMM_Bookstand_Alchemy_Info_4						);
					Doc_PrintLines	( nDocID,  1, GMM_Bookstand_Alchemy_Info_5		);
					Doc_Show		( nDocID );
					
					if (ALchemy_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);
						ALchemy_1_permanent = TRUE;
					};	  

	};
};


const string BookstandALCHEMY2_S1_1 = "Healing Potions";
const string BookstandALCHEMY2_S1_2 = "and Ingredients";
const string BookstandALCHEMY2_S1_3 = "2 healing plants";
const string BookstandALCHEMY2_S1_4 = "2 healing herbs";
const string BookstandALCHEMY2_S1_5 = "2 healing roots";
const string BookstandALCHEMY2_S1_6 = "All work at the alchemist's bench requires a laboratory flask which is used up in the process.";
const string BookstandALCHEMY2_S1_7 = "To brew any healing potions or potions to strengthen magic power, you need a special ingredient and a plant:";
const string BookstandALCHEMY2_S1_8 = "Meadow Knotweed";
const string BookstandALCHEMY2_S1_9 = "To brew any potions that effect permanent changes to the body or spirit, you need a certain plant:";
const string BookstandALCHEMY2_S1_10 = "King's Sorrel";


FUNC VOID Use_BookstandALCHEMY2_S1()		//AlchemiebÃƒÂ¼cher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_1);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_2						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, NAME_HealthPotion1						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_3						);
					Doc_PrintLine	( nDocID,  0, GMM_Bookstand_Alchemy_Berry						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, NAME_HealthPotion2						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_4						);
					Doc_PrintLine	( nDocID,  0,  GMM_Bookstand_Alchemy_BlueElder						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, NAME_HealthPotion3						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_5					);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_8						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY2_S1_6	); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, GMM_Bookstand_Alchemy_Info_1			);
					Doc_PrintLines	( nDocID,  1, GMM_Bookstand_Alchemy_Info_2		);
					Doc_PrintLines	( nDocID,  1, GMM_Bookstand_Alchemy_Info_3						);
					Doc_PrintLines	( nDocID,  1, GMM_Bookstand_Alchemy_Info_4						);
					Doc_PrintLines	( nDocID,  1, GMM_Bookstand_Alchemy_Info_5		);
					Doc_Show		( nDocID );
					
					if (ALchemy_2_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);
						ALchemy_2_permanent = TRUE;
					};	

	};
};

const string BookstandALCHEMY3_S1_1 = "Potions for Permanent Changes";
const string BookstandALCHEMY3_S1_2 = "and Ingredients";
const string BookstandALCHEMY3_S1_3 = "1 goblin berry";
const string BookstandALCHEMY3_S1_4 = "1 snapperweed - This potion requires not king's sorrel, but meadow knotweed.";
const string BookstandALCHEMY3_S1_5 = "1 dragonroot";
const string BookstandALCHEMY3_S1_6 = "1 healing root";
const string BookstandALCHEMY3_S1_7 = "1 fire root";
const string BookstandALCHEMY3_S1_8 = "Brewing these recipes is the highest art of alchemy. They all have the use of king's sorrel as an ingredient in common.";
const string BookstandALCHEMY3_S1_9 = "The potion of speed is much simpler to create which is also due to the fact that you do not need king's sorrel.";

//GMM
const string GMM_Bookstand_Alchemy_PermDex_Ingredients = "1 Goblin Berry, 1 Meadow Knotweed";
const string GMM_Bookstand_Alchemy_PermStr_Ingredients = "1 Dragonroot, 1 Meadow Knotweed";
const string GMM_Bookstand_Alchemy_PermHP_Ingredients = "1 Healing Root, 1 Meadow Knotweed";
const string GMM_Bookstand_Alchemy_PermMana_Ingredients = "1 Fire Root, 1 Meadow Knotweed";
const string GMM_Bookstand_Alchemy_PermPotion_Info = "Brewing these recipes is the highest art of alchemy. They all have the use of king's sorrel and meadow knotweed as an ingredients in common.";

FUNC VOID Use_BookstandALCHEMY3_S1()		//AlchemiebÃƒÂ¼cher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, BookstandALCHEMY3_S1_1);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY3_S1_2						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					Doc_PrintLine	( nDocID,  0, NAME_Dex_Permanent						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY3_S1_3						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_8    );
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, NAME_Speed_Potion						);
					Doc_PrintLines	( nDocID,  0, BookstandALCHEMY3_S1_4						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, NAME_Str_Permanent						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY3_S1_5						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_8						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, NAME_HealthPermanent						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY3_S1_6						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_8						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, NAME_ManaPermanent						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY3_S1_7						);
					Doc_PrintLine	( nDocID,  0, BookstandALCHEMY2_S1_8						);
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, GMM_Bookstand_Alchemy_PermPotion_Info); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, BookstandALCHEMY3_S1_9						);
					Doc_PrintLine	( nDocID,  1, ""						);
					
					
					Doc_Show		( nDocID );
					
					if (ALchemy_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);
						ALchemy_3_permanent = TRUE;
					};	

	};
};

