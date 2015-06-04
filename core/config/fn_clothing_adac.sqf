/*
	File: fn_clothing_ems.sqf
	Author: Hungry?
	
	Description:
	Uniform Shop für EMS
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Adac Uniform Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["A3L_Worker_Outfit","Adac Uniform",850]
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
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,200],
			["G_Sport_Blackred",nil,200],
			["G_Sport_Checkered",nil,200],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,200],
			["G_Aviator",nil,750],
			["G_Squares",nil,100],
			["G_Lowprofile",nil,300],
			["G_Combat",nil,550],
			["G_Balaclava_blk",nil,550],
			["G_Balaclava_combat",nil,550],
			["G_Balaclava_lowprofile",nil,500],
			["A3L_Balaclava",nil,600],
			["SFG_Tac_BeardD","Tactical Beard (Dark)",275],
			["SFG_Tac_BeardB","Tactical Beard (Blonde)",275],
			["SFG_Tac_BeardG","Tactical Beard (Ginger)",275],
			["SFG_Tac_BeardO","Tactical Beard (Old)",275],
			["SFG_Tac_ChopsD","Tactical Mutton Chops (Dark)",275],
			["SFG_Tac_ChopsG","Tactical Mutton Chops (Ginger)",275],
			["SFG_Tac_ChopsB","Tactical Mutton Chops (Blonde)",275],
			["SFG_Tac_ChopsO","Tactical Mutton Chops (Old)",275],
			["SFG_Tac_moustacheD","Tactical Moustache (Dark)",275],
			["SFG_Tac_moustacheG","Tactical Moustache (Ginger)",275],
			["SFG_Tac_moustacheB","Tactical Moustache (Blonde)",275],
			["SFG_Tac_moustacheO","Tactical Moustache (Old)",275],
			["SFG_Tac_chinlessbD","Tactical Chinless Beard (Dark)",275],
			["SFG_Tac_chinlessbG","Tactical Chinless Beard (Ginger)",275],
			["SFG_Tac_chinlessbB","Tactical Chinless Beard (Blonde)",275],
			["SFG_Tac_chinlessbO","Tactical Chinless Beard (Old)",275]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_RebreatherB",nil,5000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[

		];
	};
};