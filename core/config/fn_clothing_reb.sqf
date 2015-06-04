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
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["TRYK_U_B_BLK","TRYK CombatUniform (Black)",5000],
			["TRYK_U_B_BLK_Tshirt","TRYK ShirtUniform (Black)",5000],
			["TRYK_U_B_BLKBLK_CombatUniform","TRYK BLK+BLK Combat Uniform",5000],
			["TRYK_U_B_BLKBLK_R_CombatUniform","TRYK BLK+BLK Combat Uniform Roll",5000],
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_O_PilotCoveralls",nil,15610],
			["U_IG_leader","Guerilla Leader",15340],
			["U_B_GhillieSuit",nil,50000],
			["U_I_GhillieSuit",nil,50000],
			["U_O_GhillieSuit",nil,50000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["kio_skl_msk","Skull Mask",2500],
			["kio_skl_msk_red","Skull Mask Red",2500],
			["kio_skl_msk_grn","Skull Mask Green",2500],
			["TRYK_Kio_Balaclava",nil,2000],
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Aviator",nil,100],
			["Mask_M40",nil,3500],
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
			["V_HarnessO_brn",nil,7500],
			["V_BandollierB_cbr",nil,4500],
			["V_TacVest_khk",nil,12500],
			["V_TacVest_camo",nil,12500],
			["k_cut_1","Sinister Sons",2500],
			["k_cut_2","Gold Gunners",2500],
			["k_cut_3","Sons of Anarchy Member",2500],
			["k_cut_4","Sons of Anarchy President",2500],
			["k_cut_5","Sons of Outlaws",2500],
			["Jamie_Rebell",nil,5000]
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
			//1.7.1
			["glt_assaultpack_ndk",nil,1500],
			["glt_bergen_ndk",nil,1500],
			["glt_carryall_ndk",nil,1500],
			["glt_fieldpack_ndk",nil,1500],
			["glt_kitbag_ndk",nil,1500],
			
			["B_Carryall_khk",nil,500]
		];
	};
};