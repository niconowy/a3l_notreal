/*
	File: fn_clothing_ems.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"EMS/FDP Dienstkleidung"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		
			["EMTRM_uni","Praktikant",750],
			//["A3L_EMT1",nil,1000],
			["A3L_Sani","Sanitäter",750],
			["A3L_Retass","Rettungsassistent",750],
			["A3L_Notarzt","Arzt",750],
			["A3L_Oberarzt","Oberarzt",750],
			["A3L_Chefarzt","Chefarzt",750],
			//["A3L_EMT2",nil,1000],
			["fire_uni2","PSA-Feuerwehr (orange)",750],
			["fire_uni1","PSA-Feuerwehr (black)",750],
			["emsoff_uni","LS-EMS Poloshirt",500],
			//["emt_Uni1",nil, 1000],
			["emt_Uni3","LS-EMS-Dienstkleidung (rot)",750],
			["U_O_Wetsuit","Taucheranzug",750],
			["A3L_MotorUniM","LS-EMS Motorradkleidung",750],
			["U_CivilianCoat_A","Arztkittel",500]
		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["do_medcap","Paramedic Mütze (marineblau)",15],
			["firehat","Feuerwehr Einsatzhelm",20],
			["A3L_medic_helmet","Feuerwehr Kopfschutz",20],
			["H_Cap_blu","Blaue Mütze",15],
			["H_Cap_red","Rote Mütze",15],
			["H_Beret_A","Rotes Beret",15],
			["H_MilCap_blue","Blaue Funkmütze",15],
			["H_PilotHelmetHeli_B","Pilotenhelm",250],
			["H_RacingHelmet_1_red_F","Motorradhelm",50],
			["H_ALFR_Headset","Headset",250]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["Masque_Chirurgical","Mundschutz",15],
			["Mask_M40","Gasmaske",25],
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
			["G_Bandanna_aviator",nil,20],
			["G_Diving",nil,500],
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
			["V_BandollierB_blk",nil,750],
			["V_Rangemaster_belt",nil,250],
			["TRYK_V_ArmorVest_Winter","Einsatzleiter Weste",250],
			["V_RebreatherB","Tauchgerät",2500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_TacticalPack_blk",nil,300],
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
