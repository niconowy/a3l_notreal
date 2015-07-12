/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{

	// Boats
	case "A3L_Ship": {100};
	case "A3L_Jetski_yellow": {5};
	case "A3L_Jetski": {5};
	
	// cars
	case "A3L_Veyron": {15};
	case "A3L_Veyron_red": {15};
	case "A3L_Veyron_black": {15};
	case "A3L_Veyron_white": {15};
	case "A3L_Veyron_orange": {15};

	case "S_Rangerover_Black": {45};
	case "S_Rangerover_Red": {45};
	case "S_Rangerover_Blue": {45};
	case "S_Rangerover_Green": {45};
	case "S_Rangerover_Purple": {45};
	case "S_Rangerover_Grey": {45};
	case "S_Rangerover_Orange": {45};
	case "S_Rangerover_White": {45};
	
	case "A3L_RX7_Blue": {25};
	case "A3L_RX7_Red": {25};
	case "A3L_RX7_White": {25};
	case "A3L_RX7_Black": {25};
	
	case "S_Vantage_Red": {25};
	case "S_Vantage_Blue": {25};
	case "S_Vantage_Yellow": {25};
	case "S_Vantage_Black": {25};
	case "S_Vantage_LightBlue": {25};
	case "S_Vantage_Purple": {25};
	case "S_Vantage_White": {25};	

	case "DAR_M3CivBlack": {25};
	case "DAR_M3CivWhite": {25};
	case "DAR_M3CivGrey": {25};
	
	case "ALFR_GeK_Panamera": {15};
	case "wirk_cayenne": {45};
	
	case "ALFR_GeK_MF1": {15};
	//Lamborghini
	case "cl3_reventon_white": {15};
	case "cl3_reventon_purple": {15};
	case "cl3_reventon_navy_blue": {15};
	case "cl3_reventon_lime": {15};
	case "cl3_reventon_light_yellow": {15};
	case "cl3_reventon_light_blue": {15};
	case "cl3_reventon_grey": {15};
	case "cl3_reventon_gold": {15};
	case "cl3_reventon_burgundy": {15};
	case "cl3_reventon_black": {15};
	case "cl3_murcielago_white": {15};
	case "cl3_murcielago_purple": {15};
	case "cl3_murcielago_navy_blue": {15};
	case "cl3_murcielago_lime": {15};
	case "cl3_murcielago_light_yellow": {15};
	case "cl3_murcielago_light_blue": {15};
	case "cl3_murcielago_grey": {15};
	case "cl3_murcielago_gold": {15};
	case "cl3_murcielago_burgundy": {15};
	case "cl3_murcielago_black": {15};
	case "cl3_lamborghini_gt1_white": {15};
	case "cl3_lamborghini_gt1_purple": {15};
	case "cl3_lamborghini_gt1_navy_blue": {15};
	case "cl3_lamborghini_gt1_lime": {15};
	case "cl3_lamborghini_gt1_light_yellow": {15};
	case "cl3_lamborghini_gt1_light_blue": {15};
	case "cl3_lamborghini_gt1_grey": {15};
	case "cl3_lamborghini_gt1_gold": {15};
	case "cl3_lamborghini_gt1_burgundy": {15};
	case "cl3_lamborghini_gt1_black": {15};
	//Aston Martin
	case "cl3_dbs_volante_white": {15};
	case "cl3_dbs_volante_purple": {15};
	case "cl3_dbs_volante_navy_blue": {15};
	case "cl3_dbs_volante_lime": {15};
	case "cl3_dbs_volante_light_yellow": {15};
	case "cl3_dbs_volante_light_blue": {15};
	case "cl3_dbs_volante_grey": {15};
	case "cl3_dbs_volante_gold": {15};
	case "cl3_dbs_volante_burgundy": {15};
	case "cl3_dbs_volante_black": {15};
	//Audi R8
	case "cl3_r8_spyder_white": {15};
	case "cl3_r8_spyder_purple": {15};
	case "cl3_r8_spyder_navy_blue": {15};
	case "cl3_r8_spyder_lime": {15};
	case "cl3_r8_spyder_light_yellow": {15};
	case "cl3_r8_spyder_light_blue": {15};
	case "cl3_r8_spyder_grey": {15};
	case "cl3_r8_spyder_gold": {15};
	case "cl3_r8_spyder_burgundy": {15};
	case "cl3_r8_spyder_black": {15};
	//Ferrari
	case "cl3_458_white": {15};
	case "cl3_458_purple": {15};
	case "cl3_458_navy_blue": {15};
	case "cl3_458_lime": {15};
	case "cl3_458_light_yellow": {15};
	case "cl3_458_light_blue": {15};
	case "cl3_458_grey": {15};
	case "cl3_458_gold": {15};
	case "cl3_458_burgundy": {15};
	case "cl3_458_black",520000]
	
	
	case "ALFR_GeK_Volvo_FH16_2012": {350};
			
	case "A3L_ChargerUC": {25};
	case "A3L_ChargerUCWhite": {25};
	
	case "SAL_AudiCiv": {30};
	case "SAL_AudiCivRed": {30};
	case "SAL_AudiCivSilver": {30};
	case "SAL_AudiCivBlack": {30};
	case "RDS_S1203_Civ_01": {5};
	case "RDS_Lada_Civ_01": {5};
	case "RDS_Lada_Civ_02": {5};
	case "RDS_Lada_Civ_03": {5};
	case "RDS_Lada_Civ_04": {5};
	case "RDS_Golf4_Civ_01": {5};
	case "ALFR_GeK_Pagani_Zonda": {30};

	case "A3L_CVWhite": {25};
	case "A3L_CVBlack": {25};
	case "A3L_CVGrey": {25};
	case "A3L_CVRed": {25};
	case "A3L_CVPink": {25};
	case "A3L_CVBlue": {25};
	
	case "A3L_CVPILBFD": {25};
	
	case "A3L_CVPIUC": {45};
	case "A3L_CVPIUCBlack": {45};
	case "A3L_CVPIUCWhite": {45};
	case "A3L_CVPIUCGrey": {45};
	case "A3L_CVPIUCRed": {45};
	case "A3L_CVPIUCPink": {45};
	case "A3L_CVPIUCBlue": {45};
	
	case "Jonzie_Mini_Cooper": {15};

	case "S_McLarenP1_Black": {15};
	case "S_McLarenP1_Blue": {15};
	case "S_McLarenP1_Orange": {15};
	case "S_McLarenP1_White": {15};
	case "S_McLarenP1_Yellow": {15};
	case "S_McLarenP1_Silver": {15};
	
	case "S_PorscheRS_Black": {15};
	case "S_PorscheRS_Yellow": {15};
	case "S_PorscheRS_White": {15};
	
	case "IVORY_REV": {15};
	case "IVORY_R8SPYDER": {15};
	case "IVORY_R8": {15};
	case "IVORY_PRIUS": {15};
	case "A3L_EvoXFPBLBSO": {45};
	case "A3L_EvoXFPBLBPD": {45};


	case "A3L_GrandCaravanUC": {25};
	case "A3L_GrandCaravanUCBlack": {25};
	
	case "A3L_Bus": {30};
	
	case "A3L_TaurusFPBLBPD": {45};
	case "A3L_TaurusFPBLBCSO": {45};
	case "A3L_TaurusFPBPD": {45};
	case "A3L_TaurusFPBPDGM": {45};
	case "A3L_TaurusFPBCSO": {45};
	case "A3L_TaurusUCBlack": {45};
	case "A3L_TaurusUCGrey": {45};
	case "A3L_TaurusUCWhite": {45};
	case "A3L_TaurusUCBlue": {45};
	case "A3L_TaurusUCRed": {45};
	
	case "A3L_CVPIFPBPD": {45};
	case "A3L_CVPIFPBCSO": {45};
	case "A3L_CVPIFPBFG": {45};
	case "A3L_CVPIFPBLBPD": {45};
	case "A3L_CVPIFPBLBFG": {45};
	case "A3L_CVPIFPBLBCSO": {45};
	case "A3L_CVPIFPBLBSP": {45};
	case "A3L_CVPIFPBLBSP2": {45};

	case "A3L_TahoeUCPB": {25};
	case "A3L_TahoeUC": {25};
	case "A3L_TahoeUCGMPB": {25};
	case "A3L_TahoeCSOLBPB": {25};
	
	case "A3L_jailBus": {125};
	case "A3L_SchoolBus": {25};
	
	
	case "A3L_Suburban": {25};
	case "A3L_SuburbanCSO": {25};
	case "A3L_SuburbanFG": {25};
	
	case "A3L_AmberLamps": {25};
	case "A3L_Laddertruck": {25};
	
	case "A3L_Karts": {5};	
	case "A3L_Towtruck": {75};
	case "M1030": {25};

	
	case "A3L_PuntoRed": {25};
	case "A3L_PuntoBlack": {25};
	case "A3L_PuntoWhite": {25};
	case "A3L_PuntoGrey": {25};
	
	case "A3L_FordKaBlue": {35};
	case "A3L_FordKaRed": {35};
	case "A3L_FordKaBlack": {35};
	case "A3L_FordKaWhite": {35};
	case "A3L_FordKaGrey": {35};
	
	
	case "A3L_JeepWhiteBlack": {45};
	case "A3L_JeepGreenBlack": {45};
	case "A3L_JeepRedTan": {45};
	case "A3L_JeepRedBlack": {45};
	case "A3L_JeepGrayBlack": {45};
	
	case "A3L_SuburbanWhite": {45};
	case "A3L_SuburbanBlue": {45};
	case "A3L_SuburbanRed": {45};
	case "A3L_SuburbanBlack": {45};
	case "A3L_SuburbanGrey": {45};
	case "A3L_SuburbanOrange": {45};
	
	case "A3L_TahoeWhite": {35};
	case "A3L_TahoeRed": {35};
	case "A3L_TahoeBlue": {35};
	case "dar_tahoeems": {35};
	
	case "A3L_Camaro": {15};
	
	case "A3L_Taurus": {35};
	case "A3L_TaurusBlack": {35};
	case "A3L_TaurusBlue": {35};
	case "A3L_TaurusRed": {35};
	case "A3L_TaurusBlue": {35};
	case "A3L_TaurusWhite": {35};
	
	case "A3L_Challenger": {25};
	case "A3L_ChallengerGreen": {25};
	case "A3L_ChallengerRed": {25};
	case "A3L_ChallengerWhite": {25};
	case "A3L_ChallengerBlack": {25};
	case "A3L_ChallengerBlue": {25};
	
	case "A3L_ChargerBlack": {25};
	case "A3L_ChargerWhit": {25};
	case "A3L_ChargerCstm": {25};
	
	case "A3L_VolksWagenGolfGTired": {15};
	case "A3L_VolksWagenGolfGTiblack": {15};
	case "A3L_VolksWagenGolfGTiblue": {15};
    case "A3L_VolksWagenGolfGTiwhite": {15};
	
	case "A3L_AMC": {35};
	case "A3L_AMXRed": {35};
	case "A3L_AMXWhite": {35};
	case "A3L_AMXBlue": {35};
	case "A3L_AMXGL": {35};
	
	case "A3L_VolvoS60RBlack": {35};
	case "A3L_VolvoS60Rred": {35};
	
	case "S_Skyline_Red": {35};
	case "S_Skyline_Blue": {35};
	case "S_Skyline_Black": {35};
	case "S_Skyline_Yellow": {35};
	case "S_Skyline_Purple": {35};
	case "S_Skyline_White": {35};
	
	
	case "A3L_Cooper_concept_blue": {25};
	case "A3L_Cooper_concept_black": {25};
	case "A3L_Cooper_concept_red": {25};
	case "A3L_Cooper_concept_white": {25};
	
	case "A3L_Ferrari458black": {15};
	case "A3L_Ferrari458white": {15};
	case "A3L_Ferrari458blue": {15};
	
	case "A3L_GrandCaravan": {25};
	case "A3L_GrandCaravanBlk": {25};
	case "A3L_GrandCaravanBlue": {25};
	case "A3L_GrandCaravanGreen": {25};
	case "A3L_GrandCaravanRed": {25};
	case "A3L_GrandCaravanPurple": {25};
	
	case "Jonzie_Viper": {45};
	case "A3L_F350Black": {60};
	case "A3L_F350Blue": {60};
	case "A3L_F350Red": {60};
	case "A3L_F350White": {60};
	case "A3L_Dumptruck": {275};

	case "BMW_M5Black": {25};
	case "BMW_M5White": {25};
	case "BMW_M5Red": {25};
	case "BMW_M5Blue": {25};

	case "A3L_Veyron": {15};
	case "A3L_Veyron_red": {15};
	case "A3L_Veyron_black": {15};
	case "A3L_Veyron_white": {15};
	case "A3L_Veyron_orange": {15};
	
	case "A3L_Atom": {15};

	case "Jonzie_Mini_Cooper_R_spec": {15};
	
	case A3L_CVLac: {70};

	// default
	case "C_Offroad_01_F": {50};
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {25};
	case "C_Hatchback_01_sport_F": {45};
	case "C_Van_01_transport_F": {90};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {140};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "I_Heli_Transport_02_F": {375};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	
	case "B_Heli_Transport_03_F": {50};
	case "I_Heli_Transport_02_F": {50};
	
	default {-1};
};