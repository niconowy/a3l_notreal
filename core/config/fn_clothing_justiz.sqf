/*
	File: fn_clothing_justiz.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Uniform Shop für Justiz
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
//ctrlSetText[3103,"Justiz Kleidungsladen"];

if((call life_adaclevel) < 9) exitWith {closeDialog 0; hint "Du bist keine Justiz!"};

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
			["H_Hat_Taqiyah_A",nil,575],
			["H_Hat_Taqiyah_B",nil,575],
			["H_Hat_Taqiyah_C",nil,575],
			["H_Hat_Taqiyah_D",nil,575],
			["H_Hat_Taqiyah_E",nil,575],
			
			["H_Hat_Turban_A",nil,475],
			["H_Hat_Turban_B",nil,475],
			["H_Hat_Turban_C",nil,475],
			["H_Hat_Turban_D",nil,475],
			["H_Hat_Turban_E",nil,475]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Aviator",nil,100],
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
			["domekappa_s",nil,500],
			["domekappa_blau",nil,500],
			["domekappa_p",nil,500],
			["domekappa_t",nil,500],
			["domekappa_w",nil,500],
			["domeadi_s",nil,500],
			["domeadi_blau",nil,500],
			["domeadi_p",nil,500],
			["domeadi_t",nil,500],
			["domeadi_w",nil,500],
			["domenik_s",nil,500],
			["domenik_blau",nil,500],
			["domenik_p",nil,500],
			["domenik_t",nil,500],
			["domenik_w",nil,500],
			["domepu_s",nil,500],
			["domepu_blau",nil,500],
			["domepu_p",nil,500],
			["domepu_t",nil,500],
			["domepu_w",nil,500]
		];
	};
};