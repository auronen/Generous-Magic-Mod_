
instance Spawn_Test_Items(C_Item)
{
	name = "Spawn Test Items";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItRu_TeleportOWDemonTower.3DS";
	material = MAT_STONE;
	on_state[0] = UseGMMSpawn;
	scemeName = "MAP";
	description = name;
	text[0] = "";
	inv_rotz = 180;
	inv_rotx = 90;
	inv_roty = 180;
};


func void UseGMMSpawn()
{
	CreateInvItems(self,ItMW_GMM_Stab_01_Mana,1);
	CreateInvItems(self,ItMW_GMM_Stab_02_Regen,1);
	CreateInvItems(self,ItMW_GMM_Stab_03_Eff,1);
	CreateInvItems(self,ItMW_GMM_Stab_04_Summon,1);
	CreateInvItems(self,ItMW_GMM_Stab_05_Combat,1);
	CreateInvItems(self,ItAr_KdF_L,1);
	CreateInvItems(self,ItAr_Kdf_H,1);
	CreateInvItems(self,ItRu_Whirlwind,1);
	CreateInvItems(self,ItAr_Dementor,1);
	CreateInvItems(self,ItRu_Whirlwind,1);
	CreateInvItems(self,ItRu_Geyser,1);
	CreateInvItems(self,ItRu_Waterfist,1);
	CreateInvItems(self,ItRu_SuckEnergy,1);
	CreateInvItems(self,ItRu_GreenTentacle,1);
	CreateInvItems(self,ItRu_Swarm,1);
	CreateInvItems(self,ItRu_Zap,1);
	CreateInvItems(self,ItRu_LightningFlash,1);
	CreateInvItems(self,ItRu_ChargeFireball,1);
	CreateInvItems(self,ItRu_Fear,1);
	CreateInvItems(self,ItRu_ThunderBall,1);
	CreateInvItems(self,ItRu_Pyrokinesis,1);
	CreateInvItems(self,ItRu_IceWave,1);
	CreateInvItems(self,ITRU_ARMYOFDARKNESS,1);
	CreateInvItems(self,Itsc_Whirlwind,100);
	CreateInvItems(self,Itsc_Geyser,100);
	CreateInvItems(self,Itsc_Waterfist,100);
	CreateInvItems(self,Itsc_Zap,100);
	CreateInvItems(self,Itsc_LightningFlash,100);
	CreateInvItems(self,Itsc_ChargeFireball,100);
	CreateInvItems(self,Itsc_Fear,100);
	CreateInvItems(self,Itsc_ThunderBall,100);
	CreateInvItems(self,Itsc_Pyrokinesis,100);
	CreateInvItems(self,Itsc_IceWave,100);
	CreateInvItems(self,ItMi_Pliers,1);
	CreateInvItems(self,ItMi_RuneBlank,1);
	

		CreateInvItems(self,ItMi_Flask,100);
		CreateInvItems(self,ItPl_Beet,100);
		CreateInvItems(self,ItPl_Blueplant,100);
		CreateInvItems(self,ItPl_Dex_Herb_01,100);
		CreateInvItems(self,ItPl_Health_Herb_01,100);
		CreateInvItems(self,ItPl_Health_Herb_02,100);
		CreateInvItems(self,ItPl_Health_Herb_03,100);
		CreateInvItems(self,ItPl_Mana_Herb_01,100);
		CreateInvItems(self,ItPl_Mana_Herb_02,100);
		CreateInvItems(self,ItPl_Mana_Herb_03,100);
		CreateInvItems(self,ItPl_Perm_Herb,100);
		CreateInvItems(self,ItPl_Speed_Herb_01,100);
		CreateInvItems(self,ItPl_Strength_Herb_01,100);
		CreateInvItems(self,ItPl_Temp_Herb,100);
};
