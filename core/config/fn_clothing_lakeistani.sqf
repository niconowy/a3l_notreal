/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lakeistani Outlawed"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_CivilianSport_A",nil,950],
			["U_CivilianSport_B",nil,950],
			["U_CivilianSport_C",nil,950],
			["U_CivilianSport_D",nil,950],

			["U_TKLocalUniLong_A",nil,1235],
			["U_TKLocalUniLong_B",nil,1235],
			["U_TKLocalUniLong_C",nil,1235],
			["U_TKLocalUniLong_D",nil,1235],
			["U_TKLocalUniLong_E",nil,1235],

			["U_DressTKLocalUni_E_A",nil,2750],
			["U_DressTKLocalUni_E_B",nil,2750],
			["U_DressTKLocalUni_E_C",nil,2750],
			["U_DressTKLocalUni_E_D",nil,2750],
			["U_DressTKLocalUni_E_E",nil,2750],

			["U_TerrorCombat_A",nil,5750],
			["U_TerrorCombat_B",nil,5750]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Hat_Ushanka",nil,2500],
			["H_Hat_Ushanka_Rnd_A",nil,2500],
			["H_Hat_Ushanka_Rnd_B",nil,2500],
			["H_Hat_Ushanka_Rnd_C",nil,2500],
			["H_Hat_Ushanka_Rnd_D",nil,2500],

			["H_Hat_Face_Wrap",nil,2500],
			["H_Hat_Face_Wrap_Desert",nil,2500],
			["H_Hat_Face_Wrap_Olive",nil,2500],
			["H_Hat_Face_Wrap_Red",nil,2500],

			["H_Hat_Face_Cover",nil,2500],
			["H_Hat_Face_Cover_Black",nil,2500],
			["H_Hat_Face_Cover_Gold",nil,2500],
			["H_Hat_Face_Cover_Green",nil,2500],

			["H_Hat_Turban_A",nil,2500],
			["H_Hat_Turban_B",nil,2500],
			["H_Hat_Turban_C",nil,2500],
			["H_Hat_Turban_D",nil,2500],
			["H_Hat_Turban_E",nil,2500],

			["H_Hat_Kufiya_B",nil,2500],
			["H_Hat_Kufiya_F",nil,2500],
			["H_Hat_Kufiya_D",nil,2500],
			["H_Hat_Kufiya_C",nil,2500],

			["H_Hat_Taqiyah_A",nil,2500],
			["H_Hat_Taqiyah_B",nil,2500],
			["H_Hat_Taqiyah_C",nil,2500],
			["H_Hat_Taqiyah_D",nil,2500],
			["H_Hat_Taqiyah_E",nil,2500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["H_ALFR_Heist_Mask_1",nil,1000],
			["H_ALFR_Heist_Mask_2",nil,1000],
			["H_ALFR_Heist_Mask_3",nil,1000],
			["H_ALFR_Heist_Mask_4",nil,1000],
			["H_ALFR_Heist_Mask_5",nil,1000],
			["H_ALFR_Heist_Mask_6",nil,1000],
			["H_ALFR_Heist_Mask_7",nil,1000],
			["H_ALFR_Gasmask",nil,3500],
			["H_ALFR_Metal_Gasmask_RU_blk",nil,3500],
			["H_ALFR_Metal_Gasmask_RU_oli",nil,3500],
			["H_ALFR_Metal_Gasmask_RU_grey",nil,3500],
			["H_ALFR_Metal_Gasmask_RU_khk",nil,3500],
			["H_ALFR_Metal_Gasmask_RU_fuckyou",nil,3500],
			["H_ALFR_Metal_Facemask_blk",nil,1750],
			["H_ALFR_Metal_Facemask_oli",nil,1750],
			["H_ALFR_Metal_Facemask_sand",nil,1750],
			["H_ALFR_Metal_Facemask_gry",nil,1750],
			["H_ALFR_OVERKILL_I",nil,4250],
			["H_ALFR_OVERKILL_II",nil,4500],
			["H_ALFR_OVERKILL_III",nil,4750],
			["H_ALFR_OVERKILL_IV",nil,5000]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_HarnessO_brn",nil,7500],
			["V_BandollierB_cbr",nil,4500],
			["V_TacVest_khk",nil,12500],
			["V_TacVest_camo",nil,12500],
			["do_murder",nil,15500],
			["do_kitty",nil,15500],
			["do_anonym",nil,15500],
			["Jamie_Rebell","Fuck U Police",50000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr","Schulrucksack",450],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oli",nil,500],
/*
			//1.7.1
			["glt_assaultpack_ndk",nil,1500],
			["glt_bergen_ndk",nil,1500],
			["glt_carryall_ndk",nil,1500],
			["glt_fieldpack_ndk",nil,1500],
			["glt_kitbag_ndk",nil,1500],
*/			
			["B_Carryall_khk",nil,500]
		];
	};
};