#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "mercedes":
	{
		_return = [
			["cl3_e63_amg_white",160000],
			["cl3_e63_amg_purple",160000],
			["cl3_e63_amg_navy_blue",160000],
			["cl3_e63_amg_lime",160000],
			["cl3_e63_amg_light_yellow",160000],
			["cl3_e63_amg_light_blue",160000],
			["cl3_e63_amg_grey",160000],
			["cl3_e63_amg_gold",160000],
			["cl3_e63_amg_burgundy",160000],
			["cl3_e63_amg_black",160000]
		];
	};

	case "bmw":
	{
		_return = [
			["cl3_e60_m5_white",150000],
			["cl3_e60_m5_purple",150000],
			["cl3_e60_m5_navy_blue",150000],
			["cl3_e60_m5_lime",150000],
			["cl3_e60_m5_light_yellow",150000],
			["cl3_e60_m5_light_blue",150000],
			["cl3_e60_m5_grey",150000],
			["cl3_e60_m5_gold",150000],
			["cl3_e60_m5_burgundy",150000],
			["cl3_e60_m5_black",150000],
			["cl3_z4_2008_white",160000],
			["cl3_z4_2008_purple",160000],
			["cl3_z4_2008_navy_blue",160000],
			["cl3_z4_2008_lime",160000],
			["cl3_z4_2008_light_yellow",160000],
			["cl3_z4_2008_light_blue",160000],
			["cl3_z4_2008_grey",160000],
			["cl3_z4_2008_burgundy",160000],
			["cl3_z4_2008_black",160000],
			["DAR_M3CivBlack",135000],
			["DAR_M3CivWhite",135000],
			["DAR_M3CivGrey",135000]
		];
	};
	
	
	case "porsche":
	{
		_return = [
			["S_PorscheRS_Black",360000],
			["S_PorscheRS_Yellow",360000],
			["S_PorscheRS_White",360000],
			["cl3_carrera_gt_white",600000],
			["cl3_carrera_gt_purple",600000],
			["cl3_carrera_gt_navy_blue",600000],
			["cl3_carrera_gt_lime",600000],
			["cl3_carrera_gt_light_yellow",600000],
			["cl3_carrera_gt_light_blue",600000],
			["cl3_carrera_gt_grey",600000],
			["cl3_carrera_gt_gold",600000],
			["cl3_carrera_gt_burgundy",600000],
			["cl3_carrera_gt_black",600000],
			["wirk_cayenne",1750000],
			["ALFR_GeK_Panamera",825000]
		];
	};
	
	case "opel":
	{
		_return = [
			["cl3_insignia_white",100000],
			["cl3_insignia_purple",100000],
			["cl3_insignia_navy_blue",100000],
			["cl3_insignia_lime",100000],
			["cl3_insignia_light_yellow",100000],
			["cl3_insignia_light_blue",100000],
			["cl3_insignia_grey",100000],
			["cl3_insignia_gold",100000],
			["cl3_insignia_burgundy",100000],
			["cl3_insignia_black",100000]
		];
	};
	
	case "vw":
	{
		_return = [
			["A3L_VolksWagenGolfGTired",18000],
			["A3L_VolksWagenGolfGTiblack",18000],
			["A3L_VolksWagenGolfGTiblue",18000],
			["A3L_VolksWagenGolfGTiwhite",18000],
			["cl3_golf_mk2_white",25000],
			["cl3_golf_mk2_purple",25000],
			["cl3_golf_mk2_navy_blue",25000],
			["cl3_golf_mk2_lime",25000],
			["cl3_golf_mk2_light_yellow",25000],
			["cl3_golf_mk2_light_blue",25000],
			["cl3_golf_mk2_grey",25000],
			["cl3_golf_mk2_gold",25000],
			["cl3_golf_mk2_burgundy",25000],
			["cl3_golf_mk2_black",25000],
			["cl3_polo_gti_white",35000],
			["cl3_polo_gti_purple",35000],
			["cl3_polo_gti_navy_blue",35000],
			["cl3_polo_gti_lime",35000],
			["cl3_polo_gti_light_yellow",35000],
			["cl3_polo_gti_light_blue",35000],
			["cl3_polo_gti_grey",35000],
			["cl3_polo_gti_gold",35000],
			["cl3_polo_gti_burgundy",35000],
			["cl3_polo_gti_black",35000]
		];
	};
	
	case "lambo":
	{
		_return = [
			["cl3_reventon_white",680000],
			["cl3_reventon_purple",680000],
			["cl3_reventon_navy_blue",680000],
			["cl3_reventon_lime",680000],
			["cl3_reventon_light_yellow",680000],
			["cl3_reventon_light_blue",680000],
			["cl3_reventon_grey",680000],
			["cl3_reventon_gold",680000],
			["cl3_reventon_burgundy",680000],
			["cl3_reventon_black",680000],
			["cl3_murcielago_white",600000],
			["cl3_murcielago_purple",600000],
			["cl3_murcielago_navy_blue",600000],
			["cl3_murcielago_lime",600000],
			["cl3_murcielago_light_yellow",600000],
			["cl3_murcielago_light_blue",600000],
			["cl3_murcielago_grey",600000],
			["cl3_murcielago_gold",600000],
			["cl3_murcielago_burgundy",600000],
			["cl3_murcielago_black",600000],
			["cl3_lamborghini_gt1_white",800000],
			["cl3_lamborghini_gt1_purple",800000],
			["cl3_lamborghini_gt1_navy_blue",800000],
			["cl3_lamborghini_gt1_lime",800000],
			["cl3_lamborghini_gt1_light_yellow",800000],
			["cl3_lamborghini_gt1_light_blue",800000],
			["cl3_lamborghini_gt1_grey",800000],
			["cl3_lamborghini_gt1_gold",800000],
			["cl3_lamborghini_gt1_burgundy",800000],
			["cl3_lamborghini_gt1_black",800000]
		];
	};
	
	case "aston":
	{
		_return = [
			["cl3_dbs_volante_white",200000],
			["cl3_dbs_volante_purple",200000],
			["cl3_dbs_volante_navy_blue",200000],
			["cl3_dbs_volante_lime",200000],
			["cl3_dbs_volante_light_yellow",200000],
			["cl3_dbs_volante_light_blue",200000],
			["cl3_dbs_volante_grey",200000],
			["cl3_dbs_volante_gold",200000],
			["cl3_dbs_volante_burgundy",200000],
			["cl3_dbs_volante_black",200000],
			["S_Vantage_Red",180000],
			["S_Vantage_Blue",180000],
			["S_Vantage_Black",180000],
			["S_Vantage_Yellow",180000],
			["S_Vantage_LightBlue",180000],
			["S_Vantage_Purple",180000],
			["S_Vantage_White",180000]
		];
	};
	
	case "audi":
	{
		_return = [
			["IVORY_R8",480000],
			["cl3_r8_spyder_white",520000],
			["cl3_r8_spyder_purple",520000],
			["cl3_r8_spyder_navy_blue",520000],
			["cl3_r8_spyder_lime",520000],
			["cl3_r8_spyder_light_yellow",520000],
			["cl3_r8_spyder_light_blue",520000],
			["cl3_r8_spyder_grey",520000],
			["cl3_r8_spyder_gold",520000],
			["cl3_r8_spyder_burgundy",520000],
			["cl3_r8_spyder_black",520000],
			["SAL_AudiCivSilver",175000]
		];
	};
	
	case "ferrari":
	{
		_return = [
			["cl3_458_white",520000],
			["cl3_458_purple",520000],
			["cl3_458_navy_blue",520000],
			["cl3_458_lime",520000],
			["cl3_458_light_yellow",520000],
			["cl3_458_light_blue",520000],
			["cl3_458_grey",520000],
			["cl3_458_gold",520000],
			["cl3_458_burgundy",520000],
			["cl3_458_black",520000]
		];
	};

	case "dezzie_car":
	{
		_return = [
			["Jonzie_Mini_Cooper_R_spec",300000],
			
			["cl3_arielatom_race_white",1100000],
			["cl3_arielatom_race_purple",1100000],
			["cl3_arielatom_race_navy_blue",1100000],
			["cl3_arielatom_race_lime",1100000],
			["cl3_arielatom_race_light_yellow",1100000],
			["cl3_arielatom_race_light_blue",1100000],
			["cl3_arielatom_race_grey",1100000],
			["cl3_arielatom_race_gold",1100000],
			["cl3_arielatom_race_burgundy",1100000],
			["cl3_arielatom_race_black",1100000],
			
			["cl3_veyron_blk_wht",1000000],
			["cl3_veyron_lblue_dblue",1000000],
			["cl3_veyron_lblue_lblue",1000000],
			["cl3_veyron_brn_blk",1000000],
			["wirk_h3_limo",3500000],
			["Nhz_audia8limo",3000000],
			["ALFR_GeK_MF1",955000],
			["ALFR_GeK_Pagani_Zonda",1075000]
		];
	};
	
	case "kart_shop":
	{
		_return = [
			["A3L_Karts",25000],
			["C_Kart_01_Blu_F",25000],
			["C_Kart_01_Fuel_F",25000],
			["C_Kart_01_Red_F",25000],
			["C_Kart_01_Vrana_F",25000]
		];
	};
	
	case "med_shop":
	{
		if(__GETC__(life_mediclevel) > 0) then
		{
			_return pushBack ["IVORY_PRIUS",4500]
		};
		
		if(__GETC__(life_mediclevel) > 1) then
		{
			_return pushBack ["Jonzie_Ambulance",25000]
			//_return pushBack ["A3L_AmberLamps",25000] Medics benutzen nur den einen RTW, somit unnötig
		};
		
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return pushBack ["A3L_Laddertruck",40000],
			_return pushBack ["dar_tahoeems",10000]
		};
		
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return pushBack ["A3L_CVPILBFD", 35000],
			_return pushBack ["cl3_dodge_charger_emt",100000]
		};
		
		if(__GETC__(life_mediclevel) > 4) then
		{
			_return pushBack ["cl3_xr_1000_emt",75000],
			_return pushBack ["A3L_EvoXFPBLBMED",70000]
		};
	};
	
	case "med_air_hs": {
		_return = [
			["ivory_b206_rescue",100000],
			["EC635_Unarmed_CSAT",125000],
			["IVORY_BELL512_RESCUE",185000],
			//["C_Heli_Light_01_civil_F",100000], M900
			["B_Heli_Light_01_F",100000]
			//["O_Heli_Light_02_unarmed_F",175000], Orca
			//["O_Heli_Transport_04_medevac_F", 150000] Taru
		];
	};
	
	case "exo_car":
	{
		_return = [
			["A3L_Cooper_concept_blue",80000],
			["A3L_Cooper_concept_black",80000],
			["A3L_Cooper_concept_red",80000],
			["A3L_Cooper_concept_white",80000],
			
			["cl3_enduro_yellow",208000],
			["cl3_enduro_black",208000],
			["cl3_enduro_blue",208000],
			["cl3_enduro_aqua",208000],
			["cl3_enduro_babypink",208000],
			["cl3_enduro_red",208000],
			["cl3_enduro_dark_green",208000],
			
			["cl3_chopper_blue",250000],
			["cl3_chopper_green",250000],
			["cl3_chopper_red",250000],
			
			["cl3_xr_1000_yellow",238000],
			["cl3_xr_1000_black",238000],
			["cl3_xr_1000_babypink",238000],
			["cl3_xr_1000_red",238000],
			["cl3_xr_1000_lime",238000],
			["cl3_xr_1000_flame",238000],
			
			["A3L_RX7_Blue",128000],
			["A3L_RX7_Red",128000],
			["A3L_RX7_White",128000],
			["A3L_RX7_Black",128000],
			
			["A3L_AMC",136000],
			
			["A3L_AMXRed",136000],
			["A3L_AMXWhite",136000],
			["A3L_AMXBlue",136000],
			["A3L_AMXGL",136000],
			
			["A3L_VolvoS60RBlack",136000],
			["A3L_VolvoS60Rred",136000],
			
			["S_Skyline_Red",144000],
			["S_Skyline_Blue",144000],
			["S_Skyline_Black",144000],
			["S_Skyline_Yellow",144000],
			["S_Skyline_Purple",144000],
			["S_Skyline_White",144000],
			
			["S_McLarenP1_Black",800000],
			["S_McLarenP1_Blue",800000],
			["S_McLarenP1_Orange",800000],
			["S_McLarenP1_White",800000],
			["S_McLarenP1_Yellow",800000],
			["S_McLarenP1_Silver",800000]
		];
	};
	
	case "chev_car":
	{
		_return = [
			//["A3L_SuburbanWhite",50000],
			//["A3L_SuburbanBlue",50000],
			//["A3L_SuburbanRed",50000],
			//["A3L_SuburbanBlack",50000],
			//["A3L_SuburbanGrey",50000],
			//["A3L_SuburbanOrange",50000],
			//["A3L_TahoeWhite",70000], 
			//["A3L_TahoeRed",70000], Arma kackt ab
			//["A3L_TahoeBlue",70000],
			["A3L_Camaro",250000]
		];
	};
	
	case "ford_car":
	{
		_return = [
			//["A3L_FordKaBlue",13000],
			//["A3L_FordKaRed",13000],
			//["A3L_FordKaBlack",13000],
			//["A3L_FordKaWhite",13000],
			//["A3L_FordKaGrey",13000],
			["A3L_CVWhite",30000],
			["A3L_CVBlack",30000],
			["A3L_CVGrey",30000],
			["A3L_CVRed",30000],
			["A3L_CVPink",30000],
			["A3L_CVBlue",30000],
			["A3L_Taurus",35000],
			["A3L_TaurusBlack",35000],
			["A3L_TaurusBlue",35000],
			["A3L_TaurusRed",35000],
			["A3L_TaurusWhite",35000]

		];
	};
	
	case "dodge_car":
	{
		_return =
		[
			["A3L_GrandCaravan",70000],
			["A3L_GrandCaravanBlk",70000],
			["A3L_GrandCaravanBlue",70000],
			["A3L_GrandCaravanGreen",70000],
			["A3L_GrandCaravanRed",70000],
			["A3L_GrandCaravanPurple",70000],
			["A3L_Challenger",95000],
			["A3L_ChallengerGreen",95000],
			["A3L_ChallengerRed",95000],
			["A3L_ChallengerWhite",95000],
			["A3L_ChallengerBlack",95000],
			["A3L_ChallengerBlue",95000],
			["cl3_dodge_charger_f_white",110000],
			["cl3_dodge_charger_f_purple",110000],
			["cl3_dodge_charger_f_blue",110000],
			["cl3_dodge_charger_f_lime",110000],
			["cl3_dodge_charger_f_yellow",110000],
			["cl3_dodge_charger_f_grey",110000],
			["cl3_dodge_charger_f_black",110000],
			["cl3_dodge_charger_f_darkgreen",110000],
			["cl3_dodge_charger_f_darkred",110000],
			["cl3_dodge_charger_f_orange",110000],
			//["A3L_ChargerBlack",115000], spawn nicht
			//["A3L_ChargerWhit",115000], nicht im shop
			//["A3L_ChargerCstm",115000], unsichtbar
			["Jonzie_Viper",450000]
		];
	};
	
	case "civ_car":
	{
		_return =
		[
			["cl3_s1203_blue",5000],
			["cl3_lada_red",5500],
			["cl3_lada_white",5500],
			["cl3_volha_black",6000],
			["cl3_volha_grey",6000],
			
			
			["Jonzie_Mini_Cooper",2000],
			["critgamin_smart_vert",5500],
			["critgamin_smart_orange",5500],
			["critgamin_smart_violet",5500],
			["critgamin_smart_grise",5500],
			["critgamin_smart_rose",5500],
			["critgamin_smart_jaune",5500],
			["critgamin_smart_rouge",5500],
			["critgamin_smart_bleufonce",5500],
			["critgamin_smart_bleu",5500],
			["critgamin_smart_civ",5500],
			["critgamin_smart_noir",5500],
			
			//["A3L_Escort",2500], Buggy
			//["A3L_EscortTaxi",2500], Buggy
			//["A3L_EscortBlack",2500], Buggy
			//["A3L_EscortBlue",2500], Buggy
			//["A3L_EscortWhite",2500], Buggy
			//["A3L_EscortPink",2500], Buggy
			
			["cl3_suv_black",60000],
			["cl3_suv_taxi",75000],
			
			["cl3_civic_vti_white",50000],
			["cl3_civic_vti_purple",50000],
			["cl3_civic_vti_navy_blue",50000],
			["cl3_civic_vti_lime",50000],
			["cl3_civic_vti_light_yellow",50000],
			["cl3_civic_vti_light_blue",50000],
			["cl3_civic_vti_grey",50000],
			["cl3_civic_vti_gold",50000],
			["cl3_civic_vti_burgundy",50000],
			["cl3_civic_vti_black",50000],
			
			["A3L_PuntoRed",12000],
			["A3L_PuntoBlack",12000],
			["A3L_PuntoWhite",12000],
			["A3L_PuntoGrey",12000],
			
			
			//["A3L_JeepWhiteBlack",13000], Rücklichter kaputt
			//["A3L_JeepGreenBlack",13000], Rücklichter kaputt
			//["A3L_JeepRedTan",13000], Rücklichter kaputt
			//["A3L_JeepRedBlack",13000], Rücklichter kaputt
			//["A3L_JeepGrayBlack",13000], Rücklichter kaputt
			
			["cl3_range_rover_white",20000],
			["cl3_range_rover_purple",20000],
			["cl3_range_rover_navy_blue",20000],
			["cl3_range_rover_lime",20000],
			["cl3_range_rover_light_yellow",20000],
			["cl3_range_rover_light_blue",20000],
			["cl3_range_rover_grey",20000],
			["cl3_range_rover_gold",20000],
			["cl3_range_rover_burgundy",20000],
			["cl3_range_rover_black",20000],
			["RDS_S1203_Civ_01",25000],
			["RDS_Lada_Civ_01",25000],
			["RDS_Lada_Civ_02",25000],
			["RDS_Lada_Civ_03",25000],
			["RDS_Lada_Civ_04",25000],
			["RDS_Golf4_Civ_01",25000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["A3L_F350Black",70000],
			["A3L_F350Blue",70000],
			["A3L_F350Red",70000],
			["A3L_F350White",70000],
			["A3L_Dumptruck",200000],
			["C_Van_01_box_F",90000],
			["C_Van_01_transport_F",40000],
			["A3L_Bus",70000],
			["A3L_SchoolBus",85000],
			["ALFR_GeK_Volvo_FH16_2012",350000]
		];
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_Heli_Light_01_F",810000]
		];
	};
	
	case "adac_veh":
	{
		_return =
		[
			["C_Offroad_01_F",10000],
			["A3L_Towtruck",35000],
			["A3L_CVLac",45000],
			["B_Heli_Light_01_F",100000],
			["EC635_ADAC",125000],
			["A3L_TaurusWhite",35000],
			["A3l_evoxADAC",70000]
			//["I_Heli_Transport_02_F",100000] Unnötig kein Liftsystem
		];
	};
	
	case "justiz_kfz":
	{
		if(playerSide != east) exitWith {hint "Du bist keine Justiz!"};
		if(__GETC__(life_adaclevel) < 10) exitWith { hint "Du bist nicht in der Justiz tätig." };
		if(__GETC__(life_adaclevel) == 10) then //Staatsanwalt Auto
		{
			_return pushBack ["A3L_CVBlack",30000];
			_return pushBack ["A3L_CVBlue",30000];
			_return pushBack ["A3L_TaurusBlack",35000];
			_return pushBack ["A3L_TaurusBlue",35000];
		};

		if(__GETC__(life_adaclevel) == 11) then //Richter Auto
		{
			_return pushBack ["cl3_z4_2008_black",300000];		
			_return pushBack ["wirk_h3_limo",350000];	
			_return pushBack ["A3L_CVBlack",17500];
			_return pushBack ["A3L_CVBlue",17500];
			_return pushBack ["A3L_TaurusBlack",20000];
			_return pushBack ["A3L_TaurusBlue",20000];
		};
	};

	case "donator":
	{
		if(playerSide != civilian) exitWith {hint "Du bist kein Zivilist."};
		if(__GETC__(life_donator) == 0) exitWith { hint "Du bist kein Donator" };
		if(__GETC__(life_donator) == 2) exitWith { hint "Du bist kein Donator" };
		if(__GETC__(life_donator) == 4) exitWith { hint "Du bist kein Donator" };
		if(__GETC__(life_donator) == 1) then
		{			
			_return pushBack ["cl3_reventon_2tone2",612000];
			_return pushBack ["cl3_reventon_2tone3",612000];
			_return pushBack ["cl3_reventon_2tone4",612000];
			_return pushBack ["cl3_reventon_2tone5",612000];
			_return pushBack ["cl3_reventon_flame1",612000];
			_return pushBack ["cl3_reventon_camo",612000];
			
			_return pushBack ["cl3_enduro_yellow",176800];
			_return pushBack ["cl3_enduro_black",176800];
			_return pushBack ["cl3_enduro_blue",176800];
			_return pushBack ["cl3_enduro_aqua",176800];
			_return pushBack ["cl3_enduro_babypink",176800];
			_return pushBack ["cl3_enduro_red",176800];
			_return pushBack ["cl3_enduro_dark_green",176800];
			
			_return pushBack ["cl3_chopper_blue",212500];
			_return pushBack ["cl3_chopper_green",212500];
			_return pushBack ["cl3_chopper_red",212500];
			
			_return pushBack ["cl3_xr_1000_yellow",202300];
			_return pushBack ["cl3_xr_1000_black",202300];
			_return pushBack ["cl3_xr_1000_babypink",202300];
			_return pushBack ["cl3_xr_1000_red",202300];
			_return pushBack ["cl3_xr_1000_lime",202300];
			_return pushBack ["cl3_xr_1000_flame",202300];
			
			_return pushBack ["cl3_murcielago_2tone2",540000];
			_return pushBack ["cl3_murcielago_2tone3",540000];
			_return pushBack ["cl3_murcielago_2tone4",540000];
			_return pushBack ["cl3_murcielago_2tone5",540000];
			_return pushBack ["cl3_murcielago_flame1",540000];
			_return pushBack ["cl3_murcielago_camo",540000];
			
			_return pushBack ["cl3_r8_spyder_2tone2",468000];
			_return pushBack ["cl3_r8_spyder_2tone3",468000];
			_return pushBack ["cl3_r8_spyder_2tone4",468000];
			_return pushBack ["cl3_r8_spyder_2tone5",468000];
			_return pushBack ["cl3_r8_spyder_flame1",468000];
			_return pushBack ["cl3_r8_spyder_camo",468000];
			
			_return pushBack ["cl3_458_2tone2",468000];
			_return pushBack ["cl3_458_2tone3",468000];
			_return pushBack ["cl3_458_2tone4",468000];
			_return pushBack ["cl3_458_2tone5",468000];
			_return pushBack ["cl3_458_flame1",468000];
			_return pushBack ["cl3_458_camo",468000];
			
			_return pushBack ["cl3_dbs_volante_flame1",180000];
			_return pushBack ["cl3_dbs_volante_camo",180000];
			
			_return pushBack ["cl3_e63_amg_camo",144000];
			
			_return pushBack ["cl3_e60_m5_camo",135000];
			
			_return pushBack ["cl3_z4_2008_camo",144000];
			
			_return pushBack ["cl3_carrera_gt_camo",540000];

			_return pushBack ["cl3_arielatom_race_camo",990000];
			
			_return pushBack ["cl3_polo_gti_camo",31500];
			
			
			_return pushBack ["cl3_civic_vti_camo",42500];
			
			_return pushBack ["cl3_insignia_camo",85000];
			
			_return pushBack ["cl3_golf_mk2_camo",22500];
			
			_return pushBack ["cl3_range_rover_camo",18000];
			
			_return pushBack ["cl3_dodge_charger_f_camo",99000];
			_return pushBack ["cl3_dodge_charger_f_camourban",99000];
			
			_return pushBack ["cl3_dodge_charger_f_camourban",99000];
			
			_return pushBack ["S_PorscheRS_Black",324000];
			_return pushBack ["S_PorscheRS_Yellow",324000];
			_return pushBack ["S_PorscheRS_White",324000];
			
			_return pushBack ["A3L_VolksWagenGolfGTired",15300];
			_return pushBack ["A3L_VolksWagenGolfGTiblack",15300];
			_return pushBack ["A3L_VolksWagenGolfGTiblue",15300];
			_return pushBack ["A3L_VolksWagenGolfGTiwhite",15300];
			
			_return pushBack ["S_Vantage_Red",162000];
			_return pushBack ["S_Vantage_Blue",162000];
			_return pushBack ["S_Vantage_Black",162000];
			_return pushBack ["S_Vantage_Yellow",162000];
			_return pushBack ["S_Vantage_LightBlue",162000];
			_return pushBack ["S_Vantage_Purple",162000];
			_return pushBack ["S_Vantage_White",162000];
			
			_return pushBack ["IVORY_R8",432000];
			
			_return pushBack ["Jonzie_Mini_Cooper_R_spec",270000];
			
			_return pushBack ["cl3_veyron_blk_wht",900000];
			_return pushBack ["cl3_veyron_lblue_dblue",900000];
			_return pushBack ["cl3_veyron_lblue_lblue",900000];
			_return pushBack ["cl3_veyron_brn_blk",900000];
			
			_return pushBack ["A3L_RX7_Blue",97920];
			_return pushBack ["A3L_RX7_Red",97920];
			_return pushBack ["A3L_RX7_White",97920];
			_return pushBack ["A3L_RX7_Black",97920];
			
			_return pushBack ["A3L_AMC",122400];
			
			_return pushBack ["A3L_AMXRed",122400];
			_return pushBack ["A3L_AMXWhite",122400];
			_return pushBack ["A3L_AMXBlue",122400];
			_return pushBack ["A3L_AMXGL",122400];
			
			_return pushBack ["A3L_VolvoS60RBlack",122400];
			_return pushBack ["A3L_VolvoS60Rred",122400];
			
			_return pushBack ["S_Skyline_Red",129600];
			_return pushBack ["S_Skyline_Blue",129600];
			_return pushBack ["S_Skyline_Black",129600];
			_return pushBack ["S_Skyline_Yellow",129600];
			_return pushBack ["S_Skyline_Purple",129600];
			_return pushBack ["S_Skyline_White",129600];
			
			_return pushBack ["S_McLarenP1_Black",800000];
			_return pushBack ["S_McLarenP1_Blue",800000];
			_return pushBack ["S_McLarenP1_Orange",800000];
			_return pushBack ["S_McLarenP1_White",800000];
			_return pushBack ["S_McLarenP1_Yellow",800000];
			_return pushBack ["S_McLarenP1_Silver",800000];
			_return pushBack ["A3L_Camaro",225000];
			
			_return pushBack ["A3L_CVWhite",27000];
			_return pushBack ["A3L_CVBlack",27000];
			_return pushBack ["A3L_CVGrey",27000];
			_return pushBack ["A3L_CVRed",27000];
			_return pushBack ["A3L_CVPink",27000];
			_return pushBack ["A3L_CVBlue",27000];
			
			_return pushBack ["A3L_Taurus",31500];
			_return pushBack ["A3L_TaurusBlack",31500];
			_return pushBack ["A3L_TaurusBlue",31500];
			_return pushBack ["A3L_TaurusRed",31500];
			_return pushBack ["A3L_TaurusWhite",31500];
			
			_return pushBack ["A3L_GrandCaravan",63000];
			_return pushBack ["A3L_GrandCaravanBlk",63000];
			_return pushBack ["A3L_GrandCaravanBlue",63000];
			_return pushBack ["A3L_GrandCaravanGreen",63000];
			_return pushBack ["A3L_GrandCaravanRed",63000];
			_return pushBack ["A3L_GrandCaravanPurple",63000];
			
			_return pushBack ["A3L_Challenger",85500];
			_return pushBack ["A3L_ChallengerGreen",85500];
			_return pushBack ["A3L_ChallengerRed",85500];
			_return pushBack ["A3L_ChallengerWhite",85500];
			_return pushBack ["A3L_ChallengerBlack",85500];
			_return pushBack ["A3L_ChallengerBlue",85500];
			
			_return pushBack ["Jonzie_Viper",405000];
			
			_return pushBack ["cl3_s1203_blue",4500];
			_return pushBack ["cl3_lada_red",4950];
			_return pushBack ["cl3_lada_white",4950];
			_return pushBack ["cl3_volha_black",5400];
			_return pushBack ["cl3_volha_grey",5400];
			_return pushBack ["Jonzie_Mini_Cooper",1800];
			_return pushBack ["A3L_Escort",2250];
			_return pushBack ["A3L_EscortTaxi",2250];
			_return pushBack ["A3L_EscortBlack",2250];
			_return pushBack ["A3L_EscortBlue",2250];
			_return pushBack ["A3L_EscortWhite",2250];
			_return pushBack ["A3L_EscortPink",2250];
			
			_return pushBack ["cl3_suv_black",54000];
			_return pushBack ["cl3_suv_taxi",67500];
			
			_return pushBack ["A3L_PuntoRed",10800];
			_return pushBack ["A3L_PuntoBlack",10800];
			_return pushBack ["A3L_PuntoWhite",10800];
			_return pushBack ["A3L_PuntoGrey",10800];
			
			_return pushBack ["A3L_RegalBlack",11700];
			_return pushBack ["A3L_RegalBlue",11700];
			_return pushBack ["A3L_RegalOrange",11700];
			_return pushBack ["A3L_RegalRed",11700];
			_return pushBack ["A3L_RegalWhite",11700];
			
			_return pushBack ["A3L_JeepWhiteBlack",11700];
			_return pushBack ["A3L_JeepGreenBlack",11700];
			_return pushBack ["A3L_JeepRedTan",11700];
			_return pushBack ["A3L_JeepRedBlack",11700];
			_return pushBack ["A3L_JeepGrayBlack",11700];
			
			_return pushBack ["A3L_F350Black",63000];
			_return pushBack ["A3L_F350Blue",63000];
			_return pushBack ["A3L_F350Red",63000];
			_return pushBack ["A3L_F350White",63000];
			
			_return pushBack ["A3L_Dumptruck",180000];
			
			_return pushBack ["C_Van_01_box_F",81000];
			_return pushBack ["C_Van_01_transport_F",36000];
			
			_return pushBack ["A3L_Bus",63000];
			_return pushBack ["A3L_SchoolBus",76500];
			
			_return pushBack ["wirk_h3_limo",2975000];
			_return pushBack ["Nhz_audia8limo",2550000];
			_return pushBack ["SAL_AudiCivRed",128000];
			_return pushBack ["SAL_AudiCivBlack",128000];
			_return pushBack ["ALFR_GeK_Pagani_Zonda",752500];
		}; 
		
		if(__GETC__(life_donator) == 3) then
		{			
			_return pushBack ["cl3_reventon_2tone2",612000];
			_return pushBack ["cl3_reventon_2tone3",612000];
			_return pushBack ["cl3_reventon_2tone4",612000];
			_return pushBack ["cl3_reventon_2tone5",612000];
			_return pushBack ["cl3_reventon_flame1",612000];
			_return pushBack ["cl3_reventon_camo",612000];
			
			_return pushBack ["cl3_enduro_yellow",176800];
			_return pushBack ["cl3_enduro_black",176800];
			_return pushBack ["cl3_enduro_blue",176800];
			_return pushBack ["cl3_enduro_aqua",176800];
			_return pushBack ["cl3_enduro_babypink",176800];
			_return pushBack ["cl3_enduro_red",176800];
			_return pushBack ["cl3_enduro_dark_green",176800];
			
			_return pushBack ["cl3_chopper_blue",212500];
			_return pushBack ["cl3_chopper_green",212500];
			_return pushBack ["cl3_chopper_red",212500];
			
			_return pushBack ["cl3_xr_1000_yellow",202300];
			_return pushBack ["cl3_xr_1000_black",202300];
			_return pushBack ["cl3_xr_1000_babypink",202300];
			_return pushBack ["cl3_xr_1000_red",202300];
			_return pushBack ["cl3_xr_1000_lime",202300];
			_return pushBack ["cl3_xr_1000_flame",202300];
			
			_return pushBack ["cl3_murcielago_2tone2",540000];
			_return pushBack ["cl3_murcielago_2tone3",540000];
			_return pushBack ["cl3_murcielago_2tone4",540000];
			_return pushBack ["cl3_murcielago_2tone5",540000];
			_return pushBack ["cl3_murcielago_flame1",540000];
			_return pushBack ["cl3_murcielago_camo",540000];
			
			_return pushBack ["cl3_r8_spyder_2tone2",468000];
			_return pushBack ["cl3_r8_spyder_2tone3",468000];
			_return pushBack ["cl3_r8_spyder_2tone4",468000];
			_return pushBack ["cl3_r8_spyder_2tone5",468000];
			_return pushBack ["cl3_r8_spyder_flame1",468000];
			_return pushBack ["cl3_r8_spyder_camo",468000];
			
			_return pushBack ["cl3_458_2tone2",468000];
			_return pushBack ["cl3_458_2tone3",468000];
			_return pushBack ["cl3_458_2tone4",468000];
			_return pushBack ["cl3_458_2tone5",468000];
			_return pushBack ["cl3_458_flame1",468000];
			_return pushBack ["cl3_458_camo",468000];
			
			_return pushBack ["cl3_dbs_volante_flame1",180000];
			_return pushBack ["cl3_dbs_volante_camo",180000];
			
			_return pushBack ["cl3_e63_amg_camo",144000];
			
			_return pushBack ["cl3_e60_m5_camo",135000];
			
			_return pushBack ["cl3_z4_2008_camo",144000];
			
			_return pushBack ["cl3_carrera_gt_camo",540000];

			_return pushBack ["cl3_arielatom_race_camo",990000];
			
			_return pushBack ["cl3_polo_gti_camo",31500];
			
			
			_return pushBack ["cl3_civic_vti_camo",42500];
			
			_return pushBack ["cl3_insignia_camo",85000];
			
			_return pushBack ["cl3_golf_mk2_camo",22500];
			
			_return pushBack ["cl3_range_rover_camo",18000];
			
			_return pushBack ["cl3_dodge_charger_f_camo",99000];
			_return pushBack ["cl3_dodge_charger_f_camourban",99000];
			
			_return pushBack ["cl3_dodge_charger_f_camourban",99000];
			
			_return pushBack ["S_PorscheRS_Black",324000];
			_return pushBack ["S_PorscheRS_Yellow",324000];
			_return pushBack ["S_PorscheRS_White",324000];
			
			_return pushBack ["A3L_VolksWagenGolfGTired",15300];
			_return pushBack ["A3L_VolksWagenGolfGTiblack",15300];
			_return pushBack ["A3L_VolksWagenGolfGTiblue",15300];
			_return pushBack ["A3L_VolksWagenGolfGTiwhite",15300];
			
			_return pushBack ["S_Vantage_Red",162000];
			_return pushBack ["S_Vantage_Blue",162000];
			_return pushBack ["S_Vantage_Black",162000];
			_return pushBack ["S_Vantage_Yellow",162000];
			_return pushBack ["S_Vantage_LightBlue",162000];
			_return pushBack ["S_Vantage_Purple",162000];
			_return pushBack ["S_Vantage_White",162000];
			
			_return pushBack ["IVORY_R8",432000];
			
			_return pushBack ["Jonzie_Mini_Cooper_R_spec",270000];
			
			_return pushBack ["cl3_veyron_blk_wht",900000];
			_return pushBack ["cl3_veyron_lblue_dblue",900000];
			_return pushBack ["cl3_veyron_lblue_lblue",900000];
			_return pushBack ["cl3_veyron_brn_blk",900000];
			
			_return pushBack ["A3L_RX7_Blue",97920];
			_return pushBack ["A3L_RX7_Red",97920];
			_return pushBack ["A3L_RX7_White",97920];
			_return pushBack ["A3L_RX7_Black",97920];
			
			_return pushBack ["A3L_AMC",122400];
			
			_return pushBack ["A3L_AMXRed",122400];
			_return pushBack ["A3L_AMXWhite",122400];
			_return pushBack ["A3L_AMXBlue",122400];
			_return pushBack ["A3L_AMXGL",122400];
			
			_return pushBack ["A3L_VolvoS60RBlack",122400];
			_return pushBack ["A3L_VolvoS60Rred",122400];
			
			_return pushBack ["S_Skyline_Red",129600];
			_return pushBack ["S_Skyline_Blue",129600];
			_return pushBack ["S_Skyline_Black",129600];
			_return pushBack ["S_Skyline_Yellow",129600];
			_return pushBack ["S_Skyline_Purple",129600];
			_return pushBack ["S_Skyline_White",129600];
			
			_return pushBack ["S_McLarenP1_Black",800000];
			_return pushBack ["S_McLarenP1_Blue",800000];
			_return pushBack ["S_McLarenP1_Orange",800000];
			_return pushBack ["S_McLarenP1_White",800000];
			_return pushBack ["S_McLarenP1_Yellow",800000];
			_return pushBack ["S_McLarenP1_Silver",800000];
			_return pushBack ["A3L_Camaro",225000];
			
			_return pushBack ["A3L_CVWhite",27000];
			_return pushBack ["A3L_CVBlack",27000];
			_return pushBack ["A3L_CVGrey",27000];
			_return pushBack ["A3L_CVRed",27000];
			_return pushBack ["A3L_CVPink",27000];
			_return pushBack ["A3L_CVBlue",27000];
			
			_return pushBack ["A3L_Taurus",31500];
			_return pushBack ["A3L_TaurusBlack",31500];
			_return pushBack ["A3L_TaurusBlue",31500];
			_return pushBack ["A3L_TaurusRed",31500];
			_return pushBack ["A3L_TaurusWhite",31500];
			
			_return pushBack ["A3L_GrandCaravan",63000];
			_return pushBack ["A3L_GrandCaravanBlk",63000];
			_return pushBack ["A3L_GrandCaravanBlue",63000];
			_return pushBack ["A3L_GrandCaravanGreen",63000];
			_return pushBack ["A3L_GrandCaravanRed",63000];
			_return pushBack ["A3L_GrandCaravanPurple",63000];
			
			_return pushBack ["A3L_Challenger",85500];
			_return pushBack ["A3L_ChallengerGreen",85500];
			_return pushBack ["A3L_ChallengerRed",85500];
			_return pushBack ["A3L_ChallengerWhite",85500];
			_return pushBack ["A3L_ChallengerBlack",85500];
			_return pushBack ["A3L_ChallengerBlue",85500];
			
			_return pushBack ["Jonzie_Viper",405000];
			
			_return pushBack ["cl3_s1203_blue",4500];
			_return pushBack ["cl3_lada_red",4950];
			_return pushBack ["cl3_lada_white",4950];
			_return pushBack ["cl3_volha_black",5400];
			_return pushBack ["cl3_volha_grey",5400];
			_return pushBack ["Jonzie_Mini_Cooper",1800];
			_return pushBack ["A3L_Escort",2250];
			_return pushBack ["A3L_EscortTaxi",2250];
			_return pushBack ["A3L_EscortBlack",2250];
			_return pushBack ["A3L_EscortBlue",2250];
			_return pushBack ["A3L_EscortWhite",2250];
			_return pushBack ["A3L_EscortPink",2250];
			
			_return pushBack ["cl3_suv_black",54000];
			_return pushBack ["cl3_suv_taxi",67500];
			
			_return pushBack ["A3L_PuntoRed",10800];
			_return pushBack ["A3L_PuntoBlack",10800];
			_return pushBack ["A3L_PuntoWhite",10800];
			_return pushBack ["A3L_PuntoGrey",10800];
			
			_return pushBack ["A3L_RegalBlack",11700];
			_return pushBack ["A3L_RegalBlue",11700];
			_return pushBack ["A3L_RegalOrange",11700];
			_return pushBack ["A3L_RegalRed",11700];
			_return pushBack ["A3L_RegalWhite",11700];
			
			_return pushBack ["A3L_JeepWhiteBlack",11700];
			_return pushBack ["A3L_JeepGreenBlack",11700];
			_return pushBack ["A3L_JeepRedTan",11700];
			_return pushBack ["A3L_JeepRedBlack",11700];
			_return pushBack ["A3L_JeepGrayBlack",11700];
			
			_return pushBack ["A3L_F350Black",63000];
			_return pushBack ["A3L_F350Blue",63000];
			_return pushBack ["A3L_F350Red",63000];
			_return pushBack ["A3L_F350White",63000];
			
			_return pushBack ["A3L_Dumptruck",180000];
			
			_return pushBack ["C_Van_01_box_F",81000];
			_return pushBack ["C_Van_01_transport_F",36000];
			
			_return pushBack ["A3L_Bus",63000];
			_return pushBack ["A3L_SchoolBus",76500];
			
			_return pushBack ["wirk_h3_limo",2975000];
			_return pushBack ["Nhz_audia8limo",2550000];
			_return pushBack ["SAL_AudiCivRed",128000];
			_return pushBack ["SAL_AudiCivBlack",128000];
			_return pushBack ["ALFR_GeK_Pagani_Zonda",752500];
		}; 
		
		if(__GETC__(life_donator) == 5) then
		{			
			_return pushBack ["cl3_reventon_2tone2",612000];
			_return pushBack ["cl3_reventon_2tone3",612000];
			_return pushBack ["cl3_reventon_2tone4",612000];
			_return pushBack ["cl3_reventon_2tone5",612000];
			_return pushBack ["cl3_reventon_flame1",612000];
			_return pushBack ["cl3_reventon_camo",612000];
			
			_return pushBack ["cl3_enduro_yellow",176800];
			_return pushBack ["cl3_enduro_black",176800];
			_return pushBack ["cl3_enduro_blue",176800];
			_return pushBack ["cl3_enduro_aqua",176800];
			_return pushBack ["cl3_enduro_babypink",176800];
			_return pushBack ["cl3_enduro_red",176800];
			_return pushBack ["cl3_enduro_dark_green",176800];
			
			_return pushBack ["cl3_chopper_blue",212500];
			_return pushBack ["cl3_chopper_green",212500];
			_return pushBack ["cl3_chopper_red",212500];
			
			_return pushBack ["cl3_xr_1000_yellow",202300];
			_return pushBack ["cl3_xr_1000_black",202300];
			_return pushBack ["cl3_xr_1000_babypink",202300];
			_return pushBack ["cl3_xr_1000_red",202300];
			_return pushBack ["cl3_xr_1000_lime",202300];
			_return pushBack ["cl3_xr_1000_flame",202300];
			
			_return pushBack ["cl3_murcielago_2tone2",540000];
			_return pushBack ["cl3_murcielago_2tone3",540000];
			_return pushBack ["cl3_murcielago_2tone4",540000];
			_return pushBack ["cl3_murcielago_2tone5",540000];
			_return pushBack ["cl3_murcielago_flame1",540000];
			_return pushBack ["cl3_murcielago_camo",540000];
			
			_return pushBack ["cl3_r8_spyder_2tone2",468000];
			_return pushBack ["cl3_r8_spyder_2tone3",468000];
			_return pushBack ["cl3_r8_spyder_2tone4",468000];
			_return pushBack ["cl3_r8_spyder_2tone5",468000];
			_return pushBack ["cl3_r8_spyder_flame1",468000];
			_return pushBack ["cl3_r8_spyder_camo",468000];
			
			_return pushBack ["cl3_458_2tone2",468000];
			_return pushBack ["cl3_458_2tone3",468000];
			_return pushBack ["cl3_458_2tone4",468000];
			_return pushBack ["cl3_458_2tone5",468000];
			_return pushBack ["cl3_458_flame1",468000];
			_return pushBack ["cl3_458_camo",468000];
			
			_return pushBack ["cl3_dbs_volante_flame1",180000];
			_return pushBack ["cl3_dbs_volante_camo",180000];
			
			_return pushBack ["cl3_e63_amg_camo",144000];
			
			_return pushBack ["cl3_e60_m5_camo",135000];
			
			_return pushBack ["cl3_z4_2008_camo",144000];
			
			_return pushBack ["cl3_carrera_gt_camo",540000];

			_return pushBack ["cl3_arielatom_race_camo",990000];
			
			_return pushBack ["cl3_polo_gti_camo",31500];
			
			
			_return pushBack ["cl3_civic_vti_camo",42500];
			
			_return pushBack ["cl3_insignia_camo",85000];
			
			_return pushBack ["cl3_golf_mk2_camo",22500];
			
			_return pushBack ["cl3_range_rover_camo",18000];
			
			_return pushBack ["cl3_dodge_charger_f_camo",99000];
			_return pushBack ["cl3_dodge_charger_f_camourban",99000];
			
			_return pushBack ["cl3_dodge_charger_f_camourban",99000];
			
			_return pushBack ["S_PorscheRS_Black",324000];
			_return pushBack ["S_PorscheRS_Yellow",324000];
			_return pushBack ["S_PorscheRS_White",324000];
			
			_return pushBack ["A3L_VolksWagenGolfGTired",15300];
			_return pushBack ["A3L_VolksWagenGolfGTiblack",15300];
			_return pushBack ["A3L_VolksWagenGolfGTiblue",15300];
			_return pushBack ["A3L_VolksWagenGolfGTiwhite",15300];
			
			_return pushBack ["S_Vantage_Red",162000];
			_return pushBack ["S_Vantage_Blue",162000];
			_return pushBack ["S_Vantage_Black",162000];
			_return pushBack ["S_Vantage_Yellow",162000];
			_return pushBack ["S_Vantage_LightBlue",162000];
			_return pushBack ["S_Vantage_Purple",162000];
			_return pushBack ["S_Vantage_White",162000];
			
			_return pushBack ["IVORY_R8",432000];
			
			_return pushBack ["Jonzie_Mini_Cooper_R_spec",270000];
			
			_return pushBack ["cl3_veyron_blk_wht",900000];
			_return pushBack ["cl3_veyron_lblue_dblue",900000];
			_return pushBack ["cl3_veyron_lblue_lblue",900000];
			_return pushBack ["cl3_veyron_brn_blk",900000];
			
			_return pushBack ["A3L_RX7_Blue",97920];
			_return pushBack ["A3L_RX7_Red",97920];
			_return pushBack ["A3L_RX7_White",97920];
			_return pushBack ["A3L_RX7_Black",97920];
			
			_return pushBack ["A3L_AMC",122400];
			
			_return pushBack ["A3L_AMXRed",122400];
			_return pushBack ["A3L_AMXWhite",122400];
			_return pushBack ["A3L_AMXBlue",122400];
			_return pushBack ["A3L_AMXGL",122400];
			
			_return pushBack ["A3L_VolvoS60RBlack",122400];
			_return pushBack ["A3L_VolvoS60Rred",122400];
			
			_return pushBack ["S_Skyline_Red",129600];
			_return pushBack ["S_Skyline_Blue",129600];
			_return pushBack ["S_Skyline_Black",129600];
			_return pushBack ["S_Skyline_Yellow",129600];
			_return pushBack ["S_Skyline_Purple",129600];
			_return pushBack ["S_Skyline_White",129600];
			
			_return pushBack ["S_McLarenP1_Black",800000];
			_return pushBack ["S_McLarenP1_Blue",800000];
			_return pushBack ["S_McLarenP1_Orange",800000];
			_return pushBack ["S_McLarenP1_White",800000];
			_return pushBack ["S_McLarenP1_Yellow",800000];
			_return pushBack ["S_McLarenP1_Silver",800000];
			_return pushBack ["A3L_Camaro",225000];
			
			_return pushBack ["A3L_CVWhite",27000];
			_return pushBack ["A3L_CVBlack",27000];
			_return pushBack ["A3L_CVGrey",27000];
			_return pushBack ["A3L_CVRed",27000];
			_return pushBack ["A3L_CVPink",27000];
			_return pushBack ["A3L_CVBlue",27000];
			
			_return pushBack ["A3L_Taurus",31500];
			_return pushBack ["A3L_TaurusBlack",31500];
			_return pushBack ["A3L_TaurusBlue",31500];
			_return pushBack ["A3L_TaurusRed",31500];
			_return pushBack ["A3L_TaurusWhite",31500];
			
			_return pushBack ["A3L_GrandCaravan",63000];
			_return pushBack ["A3L_GrandCaravanBlk",63000];
			_return pushBack ["A3L_GrandCaravanBlue",63000];
			_return pushBack ["A3L_GrandCaravanGreen",63000];
			_return pushBack ["A3L_GrandCaravanRed",63000];
			_return pushBack ["A3L_GrandCaravanPurple",63000];
			
			_return pushBack ["A3L_Challenger",85500];
			_return pushBack ["A3L_ChallengerGreen",85500];
			_return pushBack ["A3L_ChallengerRed",85500];
			_return pushBack ["A3L_ChallengerWhite",85500];
			_return pushBack ["A3L_ChallengerBlack",85500];
			_return pushBack ["A3L_ChallengerBlue",85500];
			
			_return pushBack ["Jonzie_Viper",405000];
			
			_return pushBack ["cl3_s1203_blue",4500];
			_return pushBack ["cl3_lada_red",4950];
			_return pushBack ["cl3_lada_white",4950];
			_return pushBack ["cl3_volha_black",5400];
			_return pushBack ["cl3_volha_grey",5400];
			_return pushBack ["Jonzie_Mini_Cooper",1800];
			_return pushBack ["A3L_Escort",2250];
			_return pushBack ["A3L_EscortTaxi",2250];
			_return pushBack ["A3L_EscortBlack",2250];
			_return pushBack ["A3L_EscortBlue",2250];
			_return pushBack ["A3L_EscortWhite",2250];
			_return pushBack ["A3L_EscortPink",2250];
			
			_return pushBack ["cl3_suv_black",54000];
			_return pushBack ["cl3_suv_taxi",67500];
			
			_return pushBack ["A3L_PuntoRed",10800];
			_return pushBack ["A3L_PuntoBlack",10800];
			_return pushBack ["A3L_PuntoWhite",10800];
			_return pushBack ["A3L_PuntoGrey",10800];
			
			_return pushBack ["A3L_RegalBlack",11700];
			_return pushBack ["A3L_RegalBlue",11700];
			_return pushBack ["A3L_RegalOrange",11700];
			_return pushBack ["A3L_RegalRed",11700];
			_return pushBack ["A3L_RegalWhite",11700];
			
			_return pushBack ["A3L_JeepWhiteBlack",11700];
			_return pushBack ["A3L_JeepGreenBlack",11700];
			_return pushBack ["A3L_JeepRedTan",11700];
			_return pushBack ["A3L_JeepRedBlack",11700];
			_return pushBack ["A3L_JeepGrayBlack",11700];
			
			_return pushBack ["A3L_F350Black",63000];
			_return pushBack ["A3L_F350Blue",63000];
			_return pushBack ["A3L_F350Red",63000];
			_return pushBack ["A3L_F350White",63000];
			
			_return pushBack ["A3L_Dumptruck",180000];
			
			_return pushBack ["C_Van_01_box_F",81000];
			_return pushBack ["C_Van_01_transport_F",36000];
			
			_return pushBack ["A3L_Bus",63000];
			_return pushBack ["A3L_SchoolBus",76500];
			
			_return pushBack ["wirk_h3_limo",2975000];
			_return pushBack ["Nhz_audia8limo",2550000];
			_return pushBack ["SAL_AudiCivRed",128000];
			_return pushBack ["SAL_AudiCivBlack",128000];
			_return pushBack ["ALFR_GeK_Pagani_Zonda",752500];
		}; 
	};
	
	case "donatorF":
	{
		if(playerSide != civilian) exitWith {hint "Du bist kein Zivilist."};
		if(__GETC__(life_donator) == 0) exitWith { hint "Du bist kein Donator" };
		if(__GETC__(life_donator) == 2) exitWith { hint "Du bist kein Donator" };
		if(__GETC__(life_donator) == 4) exitWith { hint "Du bist kein Donator" };
		if(__GETC__(life_donator) == 1) then
		{			
			_return pushBack ["B_Heli_Light_01_F",769500];
			_return pushBack ["C_Heli_Light_01_civil_F",760000];
			_return pushBack ["GNT_C185F",950000];
			_return pushBack ["GNT_C185",950000];
			_return pushBack ["ivory_b206",1216000];
			_return pushBack ["ivory_b206_news",1368000];
			_return pushBack ["IVORY_BELL512",1520000];
			_return pushBack ["O_Heli_Light_02_unarmed_F",1672000];
			_return pushBack ["IVORY_CRJ200_1",3040000];
			_return pushBack ["IVORY_YAK42D_1",3800000];
			
		};
		
		if(__GETC__(life_donator) == 3) then
		{			
			_return pushBack ["B_Heli_Light_01_F",769500];
			_return pushBack ["C_Heli_Light_01_civil_F",760000];
			_return pushBack ["GNT_C185F",950000];
			_return pushBack ["GNT_C185",950000];
			_return pushBack ["ivory_b206",1216000];
			_return pushBack ["ivory_b206_news",1368000];
			_return pushBack ["IVORY_BELL512",1520000];
			_return pushBack ["O_Heli_Light_02_unarmed_F",1672000];
			_return pushBack ["IVORY_CRJ200_1",3040000];
			_return pushBack ["IVORY_YAK42D_1",3800000];
			
		}; 
		
		if(__GETC__(life_donator) == 5) then
		{			
			_return pushBack ["B_Heli_Light_01_F",769500];
			_return pushBack ["C_Heli_Light_01_civil_F",760000];
			_return pushBack ["GNT_C185F",950000];
			_return pushBack ["GNT_C185",950000];
			_return pushBack ["ivory_b206",1216000];
			_return pushBack ["ivory_b206_news",1368000];
			_return pushBack ["IVORY_BELL512",1520000];
			_return pushBack ["O_Heli_Light_02_unarmed_F",1672000];
			_return pushBack ["IVORY_CRJ200_1",3040000];
			_return pushBack ["IVORY_YAK42D_1",3800000];
			
		}; 
	};
	
	case "cop_car":
	{
		if(playerSide != west) exitWith {hint "Du bist kein Cop!"};
		if(__GETC__(life_coplevel) > 0) then
		{
			_return pushBack ["A3l_TaurusFPBLBCSO",25000],
			//_return pushBack ["A3L_TaurusFPBPD",25000],
			_return pushBack ["A3l_TaurusFPBLBPD",25000],
			_return pushBack ["A3l_TaurusFPBLBSP",25000],
			_return pushBack ["A3L_JailBus",32500]
		};
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["A3L_CVPIFPBLBPD",45000],		
			_return pushBack ["A3L_CVPIFPBLBFG",45000],
			_return pushBack ["A3L_CVPIFPBLBCSO",45000],
			_return pushBack ["A3L_CVPIFPBLBSM",45000],
			_return pushBack ["A3L_CVPIFPBLBHP",45000]
		};
			
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack ["A3L_EvoXFPBLBPD",70000],
			_return pushBack ["A3L_EvoXFPBLBSO",70000],
			_return pushBack ["A3L_EvoXFPBLBSP",70000],
			_return pushBack ["DAR_TahoePoliceDet",50000],
			_return pushBack ["DAR_SWATPolice",85000]
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack ["DAR_ExplorerPolice",75000],
			_return pushBack ["DAR_ExplorerPoliceStealth",75000],
			_return pushBack ["DAR_TahoePolice", 50000]
		};
			
		if(__GETC__(life_coplevel) > 9) then
		{	
			_return pushBack ["cl3_xr_1000_police",75000],
			_return pushBack ["IVORY_REV",100000]
		};
	};
	
	case "fbi_cars":
	{
		if(playerSide != west) exitWith {hint "Keine Berechtigung."};
		if(__GETC__(life_donator) < 4) exitWith {hint "Du bist kein FBI-Agent!"};
		_return =
		[
			["cl3_e63_amg_white",35000],
			["cl3_e63_amg_lime",35000],
			["cl3_e63_amg_light_yellow",35000],
			["cl3_e63_amg_black",35000],
			
			["cl3_e60_m5_white",35000],
			["cl3_e60_m5_lime",35000],
			["cl3_e60_m5_light_yellow",35000],
			["cl3_e60_m5_black",35000],
			
			["cl3_s1203_blue",3500],
			["cl3_lada_red",3850],
			["cl3_lada_white",3850],
			["cl3_volha_black",4200],
			["cl3_volha_grey",4200],
			
			["cl3_enduro_yellow",80000],
			["cl3_enduro_black",80000],
			["cl3_enduro_blue",80000],
			["cl3_enduro_aqua",80000],
			["cl3_enduro_babypink",80000],
			["cl3_enduro_red",80000],
			["cl3_enduro_dark_green",80000],
			
			["cl3_chopper_blue",85000],
			["cl3_chopper_green",85000],
			["cl3_chopper_red",85000],
			
			["cl3_xr_1000_yellow",82000],
			["cl3_xr_1000_black",82000],
			["cl3_xr_1000_babypink",82000],
			["cl3_xr_1000_red",82000],
			["cl3_xr_1000_lime",82000],
			["cl3_xr_1000_flame",82000],
			
			//["IVORY_PRIUS",15750],
			
			["Jonzie_Mini_Cooper",1450],
			["A3L_CVBlack",45000],
			["A3L_CVGrey",45000],
			["A3L_CVWhite",45000],
			
			//["A3L_Escort",1750], Buggy
			//["A3L_EscortBlack",1750], Buggy
			//["A3L_EscortBlue",1750], Buggy
			//["A3L_EscortWhite",1750], Buggy
			
			["cl3_suv_black",18500],
			
			["cl3_civic_vti_white",15750],
			["cl3_civic_vti_navy_blue",15750],
			["cl3_civic_vti_lime",15750],
			["cl3_civic_vti_gold",15750],
			["cl3_civic_vti_black",15750],
			
			["A3L_PuntoRed",39350],
			["A3L_PuntoBlack",39350],
			["A3L_PuntoWhite",39350],
			["A3L_PuntoGrey",39350],
			
			["A3L_RegalBlack",9000],
			["A3L_RegalBlue",9000],
			["A3L_RegalOrange",9000],
			["A3L_RegalRed",9000],
			["A3L_RegalWhite",9000],
			
			//["A3L_JeepWhiteBlack",9000], Rücklichter kaputt
			//["A3L_JeepGreenBlack",9000], Rücklichter kaputt
			//["A3L_JeepRedTan",9000], Rücklichter kaputt
			//["A3L_JeepRedBlack",9000], Rücklichter kaputt
			//["A3L_JeepGrayBlack",9000], Rücklichter kaputt
			
			["cl3_range_rover_white",10000],
			["cl3_range_rover_lime",10000],
			["cl3_range_rover_light_yellow",10000],
			["cl3_range_rover_grey",10000],
			["cl3_range_rover_burgundy",10000],
			["cl3_range_rover_black",10000],
			
			["A3L_F350Black",45250],
			["A3L_F350Blue",45250],
			["A3L_F350Red",45250],
			["A3L_F350White",45250],
			["A3L_Dumptruck",55000],
			["C_Van_01_box_F",47110],
			["C_Van_01_transport_F",2990],
			["A3L_Bus",45250],
			["A3L_SchoolBus",50000]
		];
	};
	
	case "civ_air":
	{
		_return =
		[
			["C_Heli_Light_01_civil_F",800000],
			["GNT_C185F",1000000],
			["GNT_C185",1000000],
			["ivory_b206",1280000],
			["ivory_b206_news",1440000],
			["IVORY_BELL512",1600000],
			["O_Heli_Light_02_unarmed_F",1760000],
			["IVORY_CRJ200_1",3200000],
			["IVORY_YAK42D_1",4000000]
		];
	};
	
	case "cop_air":
	{
		_return =
		[
			["ivory_b206_police",100000],
			["B_Heli_Light_01_F",100000],
			["EC635_Unarmed_BW",85000],
			["EC635_SAR",85000],
			//["C_Heli_Light_01_civil_F",100000], M900
			//["O_Heli_Light_02_unarmed_F",175000], Orca
			["IVORY_BELL512_POLICE",185000],
			//["I_Heli_Transport_02_F",100000],
			["I_Heli_light_03_unarmed_F",100000]
			/*["B_Heli_Transport_01_F",200000], Ghosthawk
			["B_Heli_Transport_03_unarmed_F",300000],
			["O_Heli_Transport_04_F",300000],
			["O_Heli_Transport_04_covered_F",300000],
			["IVORY_T6A_1",300000]*/
		];
	};
	
	case "cop_airhq":
	{
		_return =
		[
			["ivory_b206_police",100000],
			["B_Heli_Light_01_F",100000],
			["EC635_Unarmed_BW",85000],
			["EC635_SAR",85000],
			//["C_Heli_Light_01_civil_F",100000], M900
			//["O_Heli_Light_02_unarmed_F",175000], Orca
			["IVORY_BELL512_POLICE",185000],
			//["I_Heli_Transport_02_F",100000],
			["I_Heli_light_03_unarmed_F",100000]
			/*["B_Heli_Transport_01_F",200000], Ghosthawk
			["B_Heli_Transport_03_unarmed_F",300000],
			["O_Heli_Transport_04_F",300000],
			["O_Heli_Transport_04_covered_F",300000],
			["IVORY_T6A_1",300000]*/
		];
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",30000],
			["C_Boat_Civil_01_F",175000],
			["A3L_Ship",700000],
			["A3L_Jetski",150000],
			["A3L_Jetski_yellow",150000]
		];
	};
	
	case "med_ship":
	{
		_return =
		[
			["C_Boat_Civil_01_rescue_F",30000]
		];
	};
	
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",7500],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;