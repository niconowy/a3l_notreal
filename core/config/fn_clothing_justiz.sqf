/*
	File: fn_clothing_ems.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Uniform Shop für Justiz
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Justiz Kleidungsladen"];

if(__GETC__(life_adaclevel) < 10) exitWith {hint "Du bist keine Justiz!"};

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["A3L_Suit_Uniform","Anzug (Schwarz, trad.)",12750],
			["KAEL_SUITS_BR_F13","Anzug (Weiss)",12750],
			["KAEL_SUITS_BR_F4","Anzug (Lila)",12750],
			["KAEL_SUITS_BR_F5","Anzug (Pink)",12750],
			["KAEL_SUITS_BR_F","Anzug (Rot)",12750],
			["KAEL_SUITS_BR_F3","Anzug (Blau)",12750]
		];
	};
	
	//Hats
	case 1:
	{
		[

		];
	};
	
	//Glasses
	case 2:
	{
		[
			["SFG_Tac_BeardD","Bart (Dunkel)",275],
			["SFG_Tac_BeardB","Bart (Blond)",275],
			["SFG_Tac_BeardG","Bart (Ginger)",275],
			["SFG_Tac_BeardO","Bart (Alt)",275],
			["SFG_Tac_ChopsD","Mutton Chops (Dunkel)",275],
			["SFG_Tac_ChopsG","Mutton Chops (Ginger)",275],
			["SFG_Tac_ChopsB","Mutton Chops (Blond)",275],
			["SFG_Tac_ChopsO","Mutton Chops (Alt)",275],
			["SFG_Tac_moustacheD","Moustache (Dunkel)",275],
			["SFG_Tac_moustacheG","Moustache (Ginger)",275],
			["SFG_Tac_moustacheB","Moustache (Blond)",275],
			["SFG_Tac_moustacheO","Moustache (Alt)",275],
			["SFG_Tac_chinlessbD","Chinless Beard (Dunkel)",275],
			["SFG_Tac_chinlessbG","Chinless Beard (Ginger)",275],
			["SFG_Tac_chinlessbB","Chinless Beard (Blond)",275],
			["SFG_Tac_chinlessbO","Chinless Beard (Alt)",275]
		];
	};
	
	//Vest
	case 3:
	{
		[
		//	[" ",nil,5000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			//["B_AssaultPack_cbr","Schulrucksack",150],
			//["B_Kitbag_mcamo",nil,350],
/*			// 1.7.1
			["glt_backpack_cars",nil,1000],
			["glt_backpack_dora",nil,1000],
			["glt_bergen_blue",nil,1000],
			["glt_bergen_green",nil,1000],
			["glt_bergen_orange",nil,1000],
			["glt_bergen_pink",nil,1000],
			["glt_bergen_red",nil,1000],
			["glt_bergen_violet",nil,1000],
			["glt_bergen_yellow",nil,1000],
*/			
			//["B_Carryall_khk",nil,400]
		];
	};
};