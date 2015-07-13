#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"LVPD Dienstkleidung"];

_ret = [];
switch (_filter) do
{

	//Uniform
	
	case 0:
	{
		_ret pushBack ["fto_uni","Gefängniswärter",150];
		_ret pushBack ["Sheriff_rang1",nil,300];
		_ret pushBack ["Sheriff_rang2",nil,300];
		_ret pushBack ["Sheriff_rang3",nil,300];
		_ret pushBack ["Sheriff_rang4",nil,300];
		_ret pushBack ["Sheriff_rang5",nil,300];
		_ret pushBack ["Sheriff_rang6",nil,300];
		_ret pushBack ["Sheriff_rang7",nil,300];
		_ret pushBack ["Sheriff_rang8",nil,300];
		_ret pushBack ["Sheriff_rang9",nil,300];
		_ret pushBack ["Sheriff_rang10",nil,300];
		_ret pushBack ["Sheriff_rang11",nil,300];
		_ret pushBack ["Sheriff_rang12",nil,300];
		_ret pushBack ["lvpd_rang1",nil,300];
		_ret pushBack ["lvpd_rang2",nil,300];
		_ret pushBack ["lvpd_rang3",nil,300];
		_ret pushBack ["lvpd_rang4",nil,300];
		_ret pushBack ["lvpd_rang5",nil,300];
		_ret pushBack ["lvpd_rang6",nil,300];
		_ret pushBack ["lvpd_rang7",nil,300];
		_ret pushBack ["lvpd_rang8",nil,300];
		_ret pushBack ["lvpd_rang9",nil,300];
		_ret pushBack ["lvpd_rang10",nil,300];
		_ret pushBack ["lvpd_rang11",nil,300];
		_ret pushBack ["lvpd_rang12",nil,300];
		//_ret pushBack ["A3L_Police_Uniform","lvpd",450];
		//_ret pushBack ["police_uni3","Recruit",500];
		//_ret pushBack ["cadet_uni","Rekrut",450];
		
		//_ret pushBack ["sheriff_uni1","Rec.Sheriff Uniform",500];
		//_ret pushBack ["A3L_Sheriff_Uniform","Sheriff",450];
		
		//_ret pushBack ["doj_uni","State Police",750];
		//_ret pushBack ["police_uni1","ST Uniform",750];
		
		//_ret pushBack ["FBI_uni","FBI",1000];
		//_ret pushBack ["swat_uni1","SWAT",150];
		
		//_ret pushBack ["U_B_HeliPilotCoveralls","Pilot",125];
		_ret pushBack ["A3L_PolicePilot","Pilotenkleidung (Allg.)",125];
		_ret pushBack ["A3L_Prisoner_Outfit","Gefängnisuniform",125];
		_ret pushBack ["A3L_MotorUniP","Motorradfahrer (Allg.)",125];
	};
	
	//Huete
	case 1:
	{
		//_ret pushBack ["A3L_sargehat","Polizei Sargehat",150];
		_ret pushBack ["A3L_policehelmet","Polizeimütze",75];
		//_ret pushBack ["H_HelmetB_black","FBI Helm",50];
		_ret pushBack ["H_PilotHelmetFighter_B","Piloten Helm",150];
		_ret pushBack ["H_RacingHelmet_1_black_F","Motorradhelm",250];
		_ret pushBack ["Campaign_Hat_Light","Sheriff Hut",350];
		_ret pushBack ["AM_PatrolHat","LVPD Hut (weiss)",350];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["Mask_M40","Gasmaske",2500],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,55],
			["G_Balaclava_combat",nil,55],
			["G_Balaclava_lowprofile",nil,55],
			["A3L_Balaclava",nil,60],
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
	
	//Westen
	case 3:
	{
		_ret pushBack ["A3L_policevest2","DOJ",325];
		//_ret pushBack ["A3L_policevest1","FBI",150];
		
		_ret pushBack ["A3L_sheriffvest2","LVPD",500];
		_ret pushBack ["A3L_sheriffvest1","Sheriff",500];
		//_ret pushBack ["SERTvest1","Sheriff Weste",500];
		
		//_ret pushBack ["A3L_deptjvest1","State Police",500];
		_ret pushBack ["A3L_rangervest1","Chief",500];
		
		//_ret pushBack ["A3L_fbivest1","FBI Vest",1000];
		//_ret pushBack ["SWATvest1","SWAT",1000];
		
		_ret pushBack ["V_Press_F","Presseweste NUR Aushändigung",1000];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;
