// Ringe//

// Schutzringe
const int Value_Ri_ProtFire = 250; const int Ri_ProtFire = 3;
const int Value_Ri_ProtEdge = 250; const int Ri_ProtEdge = 3;
const int Value_Ri_ProtMage = 250; const int Ri_ProtMage = 3;
const int Value_Ri_ProtPoint = 250; const int Ri_ProtPoint = 3;

const int Value_Ri_ProtFire02 = 500; const int Ri_ProtFire02 = 5;
const int Value_Ri_ProtEdge02 = 500; const int Ri_ProtEdge02 = 5;
const int Value_Ri_ProtMage02 = 500; const int Ri_ProtMage02 = 5;
const int Value_Ri_ProtPoint02 = 500; const int Ri_ProtPoint02 = 5;

const int Value_Ri_ProtTotal = 600; const int Ri_TProtFire = 2; // Schutzring Total 1
const int Ri_TProtEdge = 3;
const int Ri_TProtMage = 2;
const int Ri_TProtPoint = 3;

const int Value_Ri_ProtTotal02 = 1000; const int Ri_TProtFire02 = 3; // Schutzring Total 2
const int Ri_TProtEdge02 = 5;
const int Ri_TProtMage02 = 3;
const int Ri_TProtPoint02 = 5;

// Andere Ringe

const int Value_Ri_Dex = 300; const int Ri_Dex = 3;
const int Value_Ri_Dex02 = 500; const int Ri_Dex02 = 5;

const int Value_Ri_Mana = 500; const int Ri_Mana = 5;
const int Value_Ri_Mana02 = 1000; const int Ri_Mana02 = 10;

const int Value_Ri_Strg = 300; const int Ri_Strg = 3;
const int Value_Ri_Strg02 = 500; const int Ri_Strg02 = 5;

const int Value_Ri_Hp = 200; const int Ri_Hp = 20;
const int Value_Ri_Hp02 = 400; const int Ri_Hp02 = 40;

const int Value_Ri_HpMana = 1300; const int Ri_HpMana_Hp = 30;
const int Ri_HpMana_Mana = 10;

const int Value_Ri_DexStrg = 800; const int Ri_DexStrg_Dex = 4;
const int Ri_DexStrg_Strg = 4;

/******************************************************************************************/

instance ItRi_Prot_Fire_01(C_Item) // in einem von Halvors Fischen
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Fire_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Prot_Fire_01;
	on_unequip					= UnEquip_ItRi_Prot_Fire_01;

	value						= Value_Ri_ProtFire;

	description					= "Flame Protection Ring";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Fire;								count[2] = Ri_ProtFire;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Prot_Fire_01()
{
	self.protection [PROT_FIRE] += Ri_ProtFire;
};

func void UnEquip_ItRi_Prot_Fire_01()
{
	self.protection [PROT_FIRE] -= Ri_ProtFire;
};

/******************************************************************************************/
instance ItRi_Prot_Fire_02(C_Item) // MayaTurm2 (Truhe)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Fire_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Prot_Fire_02;
	on_unequip					= UnEquip_ItRi_Prot_Fire_02;

	value						= Value_Ri_ProtFire02;

	description					= "Fire Ring";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Fire;								count[2] = Ri_ProtFire02;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Prot_Fire_02()
{
	self.protection [PROT_FIRE] += Ri_ProtFire02;
};

func void UnEquip_ItRi_Prot_Fire_02()
{
	self.protection [PROT_FIRE] -= Ri_ProtFire02;
};

/******************************************************************************************/
instance ItRi_Prot_Point_01(C_Item) // Constantinos Schutzring
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Point_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Prot_Point_01;
	on_unequip					= UnEquip_ItRi_Prot_Point_01;

	value						= Value_Ri_ProtPoint;

	description					= "Ring of Wooden Skin";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Point;								count[2] = Ri_ProtPoint;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Prot_Point_01()
{
	self.protection [PROT_POINT] += Ri_ProtPoint;
};

func void UnEquip_ItRi_Prot_Point_01()
{
	self.protection [PROT_POINT] -= Ri_ProtPoint;
};

/******************************************************************************************/
instance ItRi_Prot_Point_02(C_Item) // Beim Schwarzen Troll / Auf Dacheninsel -> NONE_101_MARIO_DI in der Tasche
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Point_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Prot_Point_02;
	on_unequip					= UnEquip_ItRi_Prot_Point_02;

	value						= Value_Ri_ProtPoint02;

	description					= "Ring of Stone Skin";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Point;								count[2] = Ri_ProtPoint02;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Prot_Point_02()
{
	self.protection [PROT_POINT] += Ri_ProtPoint02;
};

func void UnEquip_ItRi_Prot_Point_02()
{
	self.protection [PROT_POINT] -= Ri_ProtPoint02;
};

/******************************************************************************************/
instance ItRi_Prot_Edge_01(C_Item) // bei Cassia als Belohnung // HÃƒÂ¶hle OW// PassNW bei den Orks
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Edge_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Prot_Edge_01;
	on_unequip					= UnEquip_ItRi_Prot_Edge_01;

	value						= Value_Ri_ProtEdge;

	description					= "Ring of Iron Skin";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = Ri_ProtEdge;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Prot_Edge_01()
{
	self.protection [PROT_EDGE] += Ri_ProtEdge;
	self.protection [PROT_BLUNT] += Ri_ProtEdge;
};

func void UnEquip_ItRi_Prot_Edge_01()
{
	self.protection [PROT_EDGE] -= Ri_ProtEdge;
	self.protection [PROT_BLUNT] -= Ri_ProtEdge;
};

/******************************************************************************************/
instance ItRi_Prot_Edge_02(C_Item) // Im Alten Lager
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Edge_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Prot_Edge_02;
	on_unequip					= UnEquip_ItRi_Prot_Edge_02;

	value						= Value_Ri_ProtEdge02;

	description					= "Ring of Ore Skin";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = Ri_ProtEdge02;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Prot_Edge_02()
{
	self.protection [PROT_EDGE] += Ri_ProtEdge02;
	self.protection [PROT_BLUNT] += Ri_ProtEdge02;
};

func void UnEquip_ItRi_Prot_Edge_02()
{
	self.protection [PROT_EDGE] -= Ri_ProtEdge02;
	self.protection [PROT_BLUNT] -= Ri_ProtEdge02;
};

/******************************************************************************************/
instance ItRi_Prot_Mage_01(C_ITEM) // XARDAS RING
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Mage_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Prot_Mage_01;
	on_unequip					= UnEquip_ItRi_Prot_Mage_01;

	value						= Value_Ri_ProtMage;

	description					= "Ring of Spirit";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Magic;								count[2] = Ri_ProtMage;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Prot_Mage_01()
{
	self.protection [PROT_MAGIC] += Ri_ProtMage;
};

func void UnEquip_ItRi_Prot_Mage_01()
{
	self.protection [PROT_MAGIC] -= Ri_ProtMage;
};

/******************************************************************************************/
instance ItRi_Prot_Mage_02(C_ITEM) // Joly: von Neoras, wenn SC ihm Drachenei bringt. (Nur PAL oder KDF) ab Kapitel 4 // ricelordhÃƒÂ¼tte OW
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Mage_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Prot_Mage_02;
	on_unequip					= UnEquip_ItRi_Prot_Mage_02;

	value						= Value_Ri_ProtMage02;

	description					= "Ring of Defense";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Magic;								count[2] = Ri_ProtMage02;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Prot_Mage_02()
{
	self.protection [PROT_MAGIC] += Ri_ProtMage02;
};

func void UnEquip_ItRi_Prot_Mage_02()
{
	self.protection [PROT_MAGIC] -= Ri_ProtMage02;
};

/******************************************************************************************/

instance ItRi_Prot_Total_01(C_ITEM) // Bei Lutero
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Total_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Prot_Total_01;
	on_unequip					= UnEquip_ItRi_Prot_Total_01;

	value						= Value_Ri_ProtTotal;

	description					= "Ring of Inconquerability";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Magic;								count[1] = Ri_TProtMage;
	text[2]						= NAME_Prot_Fire;								count[2] = Ri_TProtFire;
	text[3]						= NAME_Prot_Point;								count[3] = Ri_TProtPoint;
	text[4]						= NAME_Prot_Edge;								count[4] = Ri_TProtEdge;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Prot_Total_01()
{
	self.protection [PROT_EDGE] += Ri_TProtEdge;
	self.protection [PROT_BLUNT] += Ri_TProtEdge;
	self.protection [PROT_POINT] += Ri_TProtPoint;
	self.protection [PROT_FIRE] += Ri_TProtFire;
	self.protection [PROT_MAGIC] += Ri_TProtMage;
};

func void UnEquip_ItRi_Prot_Total_01()
{
	self.protection [PROT_EDGE] -= Ri_TProtEdge;
	self.protection [PROT_BLUNT] -= Ri_TProtEdge;
	self.protection [PROT_POINT] -= Ri_TProtPoint;
	self.protection [PROT_FIRE] -= Ri_TProtFire;
	self.protection [PROT_MAGIC] -= Ri_TProtMage;
};

/******************************************************************************************/
instance ItRi_Prot_Total_02(C_ITEM) // bei Lutero ab Kapitel 4 zu kaufen
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Prot_Total_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Prot_Total_02;
	on_unequip					= UnEquip_ItRi_Prot_Total_02;

	value						= Value_Ri_ProtTotal02;

	description					= "Ring of Invincibility";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Magic;								count[1] = Ri_TProtMage02;
	text[2]						= NAME_Prot_Fire;								count[2] = Ri_TProtFire02;
	text[3]						= NAME_Prot_Point;								count[3] = Ri_TProtPoint02;
	text[4]						= NAME_Prot_Edge;								count[4] = Ri_TProtEdge02;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Prot_Total_02()
{
	self.protection [PROT_EDGE] += Ri_TProtEdge02;
	self.protection [PROT_BLUNT] += Ri_TProtEdge02;
	self.protection [PROT_POINT] += Ri_TProtPoint02;
	self.protection [PROT_FIRE] += Ri_TProtFire02;
	self.protection [PROT_MAGIC] += Ri_TProtMage02;
};

func void UnEquip_ItRi_Prot_Total_02()
{
	self.protection [PROT_EDGE] -= Ri_TProtEdge02;
	self.protection [PROT_BLUNT] -= Ri_TProtEdge02;
	self.protection [PROT_POINT] -= Ri_TProtPoint02;
	self.protection [PROT_FIRE] -= Ri_TProtFire02;
	self.protection [PROT_MAGIC] -= Ri_TProtMage02;
};

/******************************************************************************************/
instance ItRi_Dex_01(C_Item) // bei Vatras Kap2.
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Dex_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Dex_01;
	on_unequip					= UnEquip_ItRi_Dex_01;

	value						= Value_Ri_Dex;

	description					= "Ring of Skill";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Dex;								count[2] = Ri_Dex;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Dex_01()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, + Ri_Dex);
};

func void UnEquip_ItRi_Dex_01()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, - Ri_Dex);
};

/******************************************************************************************/
instance ItRi_Dex_02(C_Item) // Joly:in OW NÃƒÂ¤he Alter DT
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Dex_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Dex_02;
	on_unequip					= UnEquip_ItRi_Dex_02;

	value						= Value_Ri_Dex02;

	description					= "Ring of Dexterity";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Dex;								count[2] = Ri_Dex02;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Dex_02()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, + Ri_Dex02);
};

func void UnEquip_ItRi_Dex_02()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, - Ri_Dex02);
};

/******************************************************************************************/
instance ItRi_Hp_01(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Hp_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Hp_01;
	on_unequip					= UnEquip_ItRi_Hp_01;

	value						= Value_Ri_Hp;

	description					= "Ring of Life";
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

func void Equip_ItRi_Hp_01()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + Ri_Hp;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + Ri_Hp;
};

func void UnEquip_ItRi_Hp_01()
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

/******************************************************************************************/
instance ItRi_Hp_02(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Hp_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Hp_02;
	on_unequip					= UnEquip_ItRi_Hp_02;

	value						= Value_Ri_Hp02;

	description					= "Ring of Liveliness";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_HP;								count[2] = Ri_Hp02;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Hp_02()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + Ri_Hp02;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + Ri_Hp02;
};

func void UnEquip_ItRi_Hp_02()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - Ri_Hp02;
	if (self.attribute [ATR_HITPOINTS] > Ri_Hp02 + 1)
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - Ri_Hp02;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 2;
	};
};

/******************************************************************************************/
instance ItRi_Str_01(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Str_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Str_01;
	on_unequip					= UnEquip_ItRi_Str_01;

	value						= Value_Ri_Strg;

	description					= "Ring of Force";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Str;								count[2] = Ri_Strg;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Str_01()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, + Ri_Strg);
};

func void UnEquip_ItRi_Str_01()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, - Ri_Strg);
};

/******************************************************************************************/
instance ItRi_Str_02(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Str_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Str_02;
	on_unequip					= UnEquip_ItRi_Str_02;

	value						= Value_Ri_Strg02;

	description					= "Ring of Strength";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Str;								count[2] = Ri_Strg02;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Str_02()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, + Ri_Strg02);
};

func void UnEquip_ItRi_Str_02()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, -Ri_Strg02);
};

/******************************************************************************************/
instance ItRi_Mana_01(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Mana_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Mana_01;
	on_unequip					= UnEquip_ItRi_Mana_01;

	value						= Value_Ri_Mana;

	description					= "Ring of Magic";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Mana;								count[2] = Ri_Mana;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Mana_01()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + Ri_Mana;
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + Ri_Mana;
};

func void UnEquip_ItRi_Mana_01()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - Ri_Mana;

	if (self.attribute [ATR_MANA] >= Ri_Mana)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - Ri_Mana;
	}
	else
	{
		self.attribute[ATR_MANA] = 0;
	};
};

/******************************************************************************************/
instance ItRi_Mana_02(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Mana_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Mana_02;
	on_unequip					= UnEquip_ItRi_Mana_02;

	value						= Value_Ri_Mana02;

	description					= "Ring of Astral Power";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Mana;								count[2] = Ri_Mana02;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Mana_02()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + Ri_Mana02;
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + Ri_Mana02;
};

func void UnEquip_ItRi_Mana_02()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - Ri_Mana02;

	if (self.attribute [ATR_MANA] >= Ri_Mana02)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - Ri_Mana02;
	}
	else
	{
		self.attribute[ATR_MANA] = 0;
	};
};

/******************************************************************************************/
instance ItRi_Hp_Mana_01(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Hp_Mana_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Hp_Mana_01;
	on_unequip					= UnEquip_ItRi_Hp_Mana_01;

	value						= Value_Ri_HpMana;

	description					= "Ring of Enlightenment";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Mana;								count[2] = Ri_HpMana_Mana;
	text[3]						= NAME_Bonus_HP;								count[3] = Ri_HpMana_HP;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Hp_Mana_01()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + Ri_HpMana_Mana;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + Ri_HpMana_Mana;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + Ri_HpMana_Hp;
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + Ri_HpMana_Hp;
};

func void UnEquip_ItRi_Hp_Mana_01()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - Ri_HpMana_Mana;
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - Ri_HpMana_Hp;

	if (self.attribute [ATR_HITPOINTS] > Ri_HpMana_Hp + 1)
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - Ri_HpMana_Hp;
	}
	else
	{
		self.attribute [ATR_HITPOINTS] = 2;
	};

	if (self.attribute [ATR_MANA] >= Ri_HpMana_Hp)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - Ri_HpMana_Hp;
	}
	else
	{
		self.attribute[ATR_MANA] = 0;
	};
};

/******************************************************************************************/
instance ItRi_Dex_Strg_01(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_ITEMGLIMMER";

	visual						= "ItRi_Dex_Strg_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_ItRi_Dex_Strg_01;
	on_unequip					= UnEquip_ItRi_Dex_Strg_01;

	value						= Value_Ri_DexStrg;

	description					= "Ring of Power";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Str;								count[2] = 4;
	text[3]						= NAME_Bonus_Dex;								count[3] = 4;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
	INV_ROTX					= INVCAM_X_RING_STANDARD;
	INV_ROTZ					= INVCAM_Z_RING_STANDARD;
};

func void Equip_ItRi_Dex_Strg_01()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, Ri_DexStrg_Strg);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, Ri_DexStrg_Dex);
};

func void UnEquip_ItRi_Dex_Strg_01()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, - Ri_DexStrg_Strg);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, - Ri_DexStrg_Dex);
};
