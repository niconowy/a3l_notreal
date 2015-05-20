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
			["A3L_Balaclava",nil,600]
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