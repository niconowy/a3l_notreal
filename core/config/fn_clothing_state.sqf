/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
#include <macro.h>
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
//ctrlSetText[3104,"FBI Clothing Shop"];

If (__GETC__(life_donator) <= 1)exitwith{closeDialog 0; hint "Du bist nicht in der SWAT Abteilung tätig (-Dlvl)"};
If (__GETC__(life_donator) >= 4)exitwith{closeDialog 0; hint "Du bist nicht in der SWAT Abteilung tätig (+Dlvl)"};

switch (_filter) do
{
	//Uniforms
	
	
		
	case 0:
	{
		[
			["swat_uni1","SWAT",150],
			["doj_uni","State Police",750]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["RPIMA_helm","SWAT Helm",550],
			["gign_Balaclava","Taktische Maske",50],
			["Campaign_Hat_Dark","StatePolice Hut",350],
			
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["Mask_M40","Gasmaske",275],
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["SWATvest1","SWAT Weste",1250],
			["A3L_deptjvest1","State Police",500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,250],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oli",nil,500],
			// 1.7.1
			["glt_backpack_cars",nil,1000],
			["glt_backpack_dora",nil,1000],
			["glt_bergen_blue",nil,1000],
			["glt_bergen_green",nil,1000],
			["glt_bergen_orange",nil,1000],
			["glt_bergen_pink",nil,1000],
			["glt_bergen_red",nil,1000],
			["glt_bergen_violet",nil,1000],
			["glt_bergen_yellow",nil,1000],
			
			["B_Carryall_khk",nil,500]
		];
	};
	
};
