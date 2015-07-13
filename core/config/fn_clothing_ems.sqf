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
		
			["EMTRM_uni",nil,1000],
			//["A3L_EMT1",nil,1000],
			["A3L_Sani",nil,1000],
			["A3L_Retass",nil,1000],
			["A3L_Notarzt",nil,1000],
			["A3L_Oberarzt",nil,1000],
			["A3L_Chefarzt",nil,1000],
			//["A3L_EMT2",nil,1000],
			["fire_uni2",nil,1000],
			["fire_uni1",nil,1000],
			//["emsoff_uni",nil,1000],
			//["emt_Uni1",nil, 1000],
			["emt_Uni3",nil, 1000],
			["U_O_Wetsuit",nil,1000],
			["A3L_MotorUniM",nil,1000]
		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["firehat",nil,20],
			["A3L_medic_helmet",nil,20],
			["H_MilCap_blue",nil,20],
			["H_CrewHelmetHeli_B",nil,20],
			["H_Cap_blu",nil,20],
			["H_Cap_red",nil,20],
			["H_RacingHelmet_1_red_F",nil,250]
		];
	};
	
	//Glasses
	case 2:
	{
		[
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
			["V_BandollierB_blk",nil,1000],
			["V_Rangemaster_belt",nil,250],
			["V_RebreatherB",nil,5000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_FieldPack_ocamo",nil,300],
			["B_Carryall_oucamo",nil,300],
			["B_TacticalPack_blk",nil,300]
		];
	};
};
