/*
	File: fn_clothing_adac.sqf
	Author: Hungry?
	
	Description:
	Uniform Shop für EMS
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"LAC Kleidungsladen"];

if((call life_adaclevel) >= 9) exitWith {closeDialog 0; hint "Du bist als Justiz whitelisted, nicht als LAC!"};

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["A3L_Worker_Outfit","Allg Arbeitskleidung",850],
			["A3L_lacpraktikant","Praktikant Arbeitskleidung",850],
			["A3L_lacmechaniker","Mechaniker Arbeitskleidung",850],
			["A3L_lacmechatroniker","Mechatroniker Arbeitskleidung",850],
			["A3L_lacmeister","Meister Arbeitskleidung",850],
			["A3L_lacausbilder","Ausbilder Arbeitskleidung",850],
			["A3L_lacpersonal","Personal Arbeitskleidung",850],
			["A3L_lacstell","Stellv.Leitung Arbeitskleidung",850],
			["A3L_lacchef","Leitung Arbeitskleidung",850]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_PilotHelmetHeli_O","Pilotenhelm",150],
			["H_RacingHelmet_1_black_F","Motorradhelm",250],
			["Kio_Afro_Hat","Afro",500],
			["ALE_H_NewEra_Black",nil,1250],
			["ALE_H_NewEra_Cyan",nil,1250],
			["ALE_H_NewEra_Superman",nil,1250],
			["ALE_H_NewEra_Monster",nil,1250],
			["ALE_H_Cowboy_Brown",nil,1250],
			["ALE_H_Cowboy_Black",nil,1250],
			["ALE_H_Cowboy_White",nil,1250],
			["ALE_H_NewEra_Lakers",nil,1250],
			["ALE_H_NewEra_Redsox",nil,1250],
			["H_ALFR_Headset",nil,250],
			["H_Hat_Boonie_Cowboy","Cowboy Hut",1350],
			["H_Beret_blk","Beret (black)",1350],
			["A3L_longhairblack","Haar Schwarz",120],
			["A3L_longhairblond","Haar Blond",120],
			["A3L_longhairbrown","Haar Braun",120]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_O_Diving",nil,100],
			["G_Combat",nil,175],
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,200],
			["G_Sport_Blackred",nil,200],
			["G_Sport_Checkered",nil,200],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,200],
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
			["V_RebreatherB","Tauchgerät",5000],
			["SWATvest2","Unsichtbare Weste",1500],
			["V_HarnessOGL_gry","Unsichtbare Weste",1000]
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