var int VictimCount;
var int VictimLevel;
var int ThiefLevel;

const int ThiefXP = 50;
// ------------------------------------------------------------------
func void B_GiveThiefXP()
{
	VictimCount = (VictimCount + 1); // zÃƒÂ¤hl die Opfer

	if (VictimLevel == 0)
	{
		VictimLevel = 2; // Start
	};

	if (VictimCount >= VictimLevel)
	{
		// ----------------Kalkulation-----------------

		ThiefLevel = (ThiefLevel + 1);
		VictimLevel = (VictimCount + ThiefLevel); // ErhÃƒÂ¶he die Anzahl der nÃƒÂ¶tigen Opfer zum nÃƒÂ¤chsten Level (aktuelleOpfer + aktueller Level)

		// Platz fÃƒÂ¼r Goodies (Items, Attributes...)
	};

	// -------------------XP-----------------------

	B_GivePlayerXP(ThiefXP + (ThiefLevel * 10));
};

// ------------------------------------------------------------------
func void B_ResetThiefLevel()
{
	if (VictimCount > ThiefLevel)
	{
		VictimCount = (VictimCount - 1);
	};
};
