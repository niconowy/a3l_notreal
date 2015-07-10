#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft","_return"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.


/*
=====================================

	T O   B E   C H A N G E D
	
	Muss man noch den
	Mod-Dateien anpassen.
	
	Nicht alle hier aufgelisten
	Rohstoffe haben wir
	auf dem Server!
	
=====================================
*/

switch(_craft) do
{
		case "weapon":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["hlc_rifle_akm", ["life_inv_ironr",16,"life_inv_schwarzpulver",15]],
				["hlc_30Rnd_762x39_b_ak", ["life_inv_ironr",1,"life_inv_schwarzpulver",4]],
				["hlc_rifle_aks74u", ["life_inv_ironr",16,"life_inv_schwarzpulver",15]],
				["hlc_rifle_ak12", ["life_inv_ironr",16,"life_inv_schwarzpulver",15]],
				["hlc_rifle_aek971", ["life_inv_ironr",16,"life_inv_schwarzpulver",15]],
				["hlc_30Rnd_545x39_B_AK", ["life_inv_ironr",1,"life_inv_schwarzpulver",4]],
				["RH_ar10", ["life_inv_ironr",16,"life_inv_schwarzpulver",15]],
				["RH_20Rnd_762x51_AR10", ["life_inv_ironr",1,"life_inv_schwarzpulver",4]],
				["RH_M4sbr_b", ["life_inv_ironr",16,"life_inv_schwarzpulver",15]],
				["30Rnd_556x45_Stanag", ["life_inv_ironr",1,"life_inv_schwarzpulver",4]]
			];
	};

/*
	case "uniform":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["U_IG_Guerilla1_1", ["life_inv_goldbar",1]]
			];
	};

	case "backpack":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["B_Carryall_oli", ["life_inv_goldbar",1]]
			];
	};
*/
	case "item":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["life_inv_blastingcharge", ["life_inv_elektroteile",15,"life_inv_schwarzpulver",15,"life_inv_ironr",8]]
		];
	};
};

_return;
