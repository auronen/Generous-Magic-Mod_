// *****************************
// B_SetAttitude
// -----------------------------
// setzt die AttitÃƒÂ¼de zum Player
// (temp UND perm)
// *****************************

func void B_SetAttitude(var C_Npc slf, var int att)
{
	// ------ perm Att setzen ------
	Npc_SetAttitude(slf, att);

	// ------ temp Att setzen ------
	Npc_SetTempAttitude(slf, att);
};
