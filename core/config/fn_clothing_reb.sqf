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
ctrlSetText[3103,"Muhli's Outlaw Laden"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["TRYK_U_B_BLK","Biker-Jacke (Schwarz)",6000],
			["TRYK_U_B_BLK_Tshirt","Biker-Jacke (Schwarz,kurz)",6000],
			["TRYK_U_B_BLKBLK_CombatUniform","Biker-Kleidung (Schwarz)",6000],
			["TRYK_U_B_BLKBLK_R_CombatUniform","Biker-Kleidung (Schwarz,kurz)",6000],
			["U_DressTKLocalUni_E_A",nil,500],
			["U_DressTKLocalUni_E_B",nil,500],
			["U_DressTKLocalUni_E_C",nil,500],
			["U_DressTKLocalUni_E_D",nil,500],
			["U_DressTKLocalUni_E_E",nil,500],

			["U_TKLocalUniLong_A",nil,4750],
			["U_TKLocalUniLong_B",nil,4750],
			["U_TKLocalUniLong_C",nil,4750],
			["U_TKLocalUniLong_D",nil,4750],
			["U_TKLocalUniLong_E",nil,4750],

			["U_TerrorCombat_A",nil,1755],
			["U_TerrorCombat_B",nil,1755],
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11000],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_O_PilotCoveralls",nil,15000],
			["U_IG_leader","Guerilla Leader",15000],
			["U_B_GhillieSuit","Wookie-Anzug (Hell)",65000],
			["U_I_GhillieSuit","Wookie-Anzug (Grün)",65000],
			["U_O_GhillieSuit","Wookie-Anzug (Braun)",65000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Hat_Taqiyah_A",nil,375],
			["H_Hat_Taqiyah_B",nil,375],
			["H_Hat_Taqiyah_C",nil,375],
			["H_Hat_Taqiyah_D",nil,375],
			["H_Hat_Taqiyah_E",nil,375],
			
			["H_Hat_Turban_A",nil,275],
			["H_Hat_Turban_B",nil,275],
			["H_Hat_Turban_C",nil,275],
			["H_Hat_Turban_D",nil,275],
			["H_Hat_Turban_E",nil,275],

			["H_Hat_Face_Cover_Black",nil,850],
			["H_Hat_Face_Cover_Gold",nil,850],
			["H_Hat_Face_Cover_Green",nil,850],

			["H_Hat_Face_Wrap",nil,1050],
			["H_Hat_Face_Wrap_Desert",nil,1050],
			["H_Hat_Face_Wrap_Olive",nil,1050],
			["H_Hat_Face_Wrap_Red",nil,1050],
			
			["H_Hat_Kufiya_B",nil,1550],
			["H_Hat_Kufiya_F",nil,1550],
			["H_Hat_Kufiya_D",nil,1550],
			["H_Hat_Kufiya_C",nil,1550],
			
			["H_Hat_Ushanka",nil,120],
			["H_Hat_Ushanka_Rnd_A",nil,120],
			["H_Hat_Ushanka_Rnd_B",nil,120],
			["H_Hat_Ushanka_Rnd_C",nil,120],
			["H_Hat_Ushanka_Rnd_D",nil,120],
			
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
			["H_ALFR_OVERKILL_IV",nil,5000],
			["kio_skl_msk","Skull Maske",3500],
			["kio_skl_msk_red","Skull Maske Rot",3500],
			["kio_skl_msk_grn","Skull Maske Grün",3500],
			["TRYK_Kio_Balaclava",nil,2000],
			["H_ShemagOpen_tan",nil,1050],
			["H_Shemag_olive",nil,1050],
			["H_ShemagOpen_khk",nil,1050],
			["H_HelmetO_ocamo",nil,3500],
			["H_MilCap_oucamo",nil,2200],
			["H_Bandanna_camo",nil,950]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Aviator",nil,100],
			["Mask_M40","Gasmaske",3500],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],			
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,1337],
			["G_Balaclava_combat",nil,1337],
			["G_Balaclava_lowprofile",nil,1337],
			["A3L_Balaclava",nil,1337],
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
			["V_HarnessO_brn",nil,7500],
			["V_BandollierB_cbr",nil,4500],
			["V_TacVest_khk",nil,12500],
			["V_TacVest_camo",nil,12500],
			["do_murder",nil,15500],
			["do_kitty",nil,15500],
			["do_anonym",nil,15500],
			["k_cut_1","Sinister Sons",2500],
			["k_cut_2","Gold Gunners",2500],
			["k_cut_3","Sons of Anarchy Mitglied",2500],
			["k_cut_4","Sons of Anarchy Chef",2500],
			["k_cut_5","Sons of Outlaws",2500],
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