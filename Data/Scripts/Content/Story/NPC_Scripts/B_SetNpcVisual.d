// ***********************************************
// B_SetNpcVisual
// --------------
// die Hautfabe wird hier ÃƒÅ“BERGANGEN (ist immer 0)
// und muÃƒÅ¸ manuell korrekt gesetzt werden!
// Ausserdem gibt es nur EIN Nacktmesh fÃƒÂ¼r MÃƒÂ¤nner
// und EINS fÃƒÂ¼r Frauen
// ***********************************************

func void B_SetNpcVisual(var C_Npc slf, var int gender, var string headMesh, var int faceTex, var int bodyTex, var int armorInstance)
{
	slf.aivar[AIV_Gender] = gender;

	// ------ Anis - fÃƒÂ¼r MÃƒÂ¤nner und Frauen gleich (Unterschiede werden ggf. durch Ani-Overlays gemacht ------
	Mdl_SetVisual(slf, "HUMANS.MDS");

	if (gender == MALE)
	{
		// ------ Visual ------ "body_Mesh", bodyTex SkinColor headMesh, faceTex, teethTex, armorInstance
		Mdl_SetVisualBody(slf, "hum_body_Naked0", bodyTex, 0, headMesh, faceTex, 0, armorInstance);

		// ------ schwache NSCs sind schmal ------
		if (slf.attribute[ATR_STRENGTH] < 50)
		{
			Mdl_SetModelScale(slf, 0.9, 1, 1); // BREITE / HÃƒÂ¶he / Tiefe
		};

		// ------ starke NSCs sind breit ------
		if (slf.attribute[ATR_STRENGTH] > 100)
		{
			Mdl_SetModelScale(slf, 1.1, 1, 1); // BREITE / HÃƒÂ¶he / Tiefe
		};
	}
	else // gender == FEMALE
	{
		if ((bodyTex >= 0) && (bodyTex <= 3)) // MÃƒÂ¤nnerBodyTex angegeben
		{
			bodyTex = bodyTex + 4; // Females haben Variation 4-7 (Males 0-3)
		};

		// ------ Visual ------ "Bab_body_Mesh", bodyTex SkinColor headMesh, faceTex, teethTex, armorInstance
		Mdl_SetVisualBody(slf, "Hum_Body_Babe0", bodyTex, 0, headMesh, faceTex, 0, armorInstance);
	};
};
