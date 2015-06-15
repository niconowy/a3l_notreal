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
	case "A3L_Veyron": {25};
	case "A3L_Veyron_red": {25};
	case "A3L_Veyron_black": {25};
	case "A3L_Veyron_white": {25};
	case "A3L_Veyron_orange": {25};

	case "S_Rangerover_Black": {25};
	case "S_Rangerover_Red": {25};
	case "S_Rangerover_Blue": {25};
	case "S_Rangerover_Green": {25};
	case "S_Rangerover_Purple": {25};
	case "S_Rangerover_Grey": {25};
	case "S_Rangerover_Orange": {25};
	case "S_Rangerover_White": {25};
	
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
	
	case "ALFR_GeK_Panamera": {25};
	case "wirk_cayenne": {25};
	
	case "ALFR_GeK_MF1": {25};
	
	case "ALFR_GeK_Scania_420" {250};
	case "ALFR_GeK_Scania_420_blanc" {250};
	case "ALFR_GeK_Scania_420_bleu" {250};
	case "ALFR_GeK_Scania_420_noir" {250};
	case "ALFR_GeK_Scania_420_orange" {250};
	
	case "ALFR_GeK_Volvo_FH16_2012" {250};
			
	case "A3L_ChargerUC": {25};
	case "A3L_ChargerUCWhite": {25};

	case "A3L_CVWhite": {25};
	case "A3L_CVBlack": {25};
	case "A3L_CVGrey": {25};
	case "A3L_CVRed": {25};
	case "A3L_CVPink": {25};
	case "A3L_CVBlue": {25};
	
	case "A3L_CVPILBFD": {25};
	
	case "A3L_CVPIUC": {25};
	case "A3L_CVPIUCBlack": {25};
	case "A3L_CVPIUCWhite": {25};
	case "A3L_CVPIUCGrey": {25};
	case "A3L_CVPIUCRed": {25};
	case "A3L_CVPIUCPink": {25};
	case "A3L_CVPIUCBlue": {25};
	
	case "Jonzie_Mini_Cooper": {25};

	case "S_McLarenP1_Black": {25};
	case "S_McLarenP1_Blue": {25};
	case "S_McLarenP1_Orange": {25};
	case "S_McLarenP1_White": {25};
	case "S_McLarenP1_Yellow": {25};
	case "S_McLarenP1_Silver": {25};
	
	case "S_PorscheRS_Black": {25};
	case "S_PorscheRS_Yellow": {25};
	case "S_PorscheRS_White": {25};
	
	case "IVORY_REV": {25};
	case "IVORY_R8SPYDER": {25};
	case "IVORY_R8": {25};
	case "IVORY_PRIUS": {25};
	case "A3L_M3": {25};
	case "A3L_EvoXFPBLBSO": {25};
	case "A3L_EvoXFPBLBPD": {25};


	case "A3L_GrandCaravanUC": {25};
	case "A3L_GrandCaravanUCBlack": {25};
	
	case "A3L_Bus": {30};
	
	case "A3L_TaurusFPBLBPD": {25};
	case "A3L_TaurusFPBLBCSO": {25};
	case "A3L_TaurusFPBPD": {25};
	case "A3L_TaurusFPBPDGM": {25};
	case "A3L_TaurusFPBCSO": {25};
	case "A3L_TaurusUCBlack": {25};
	case "A3L_TaurusUCGrey": {25};
	case "A3L_TaurusUCWhite": {25};
	case "A3L_TaurusUCBlue": {25};
	case "A3L_TaurusUCRed": {25};
	
	case "A3L_CVPIFPBPD": {25};
	case "A3L_CVPIFPBCSO": {25};
	case "A3L_CVPIFPBFG": {25};
	case "A3L_CVPIFPBLBPD": {25};
	case "A3L_CVPIFPBLBFG": {25};
	case "A3L_CVPIFPBLBCSO": {25};
	case "A3L_CVPIFPBLBSP": {25};
	case "A3L_CVPIFPBLBSP2": {25};

	case "A3L_TahoeUCPB": {25};
	case "A3L_TahoeUC": {25};
	case "A3L_TahoeUCGMPB": {25};
	case "A3L_TahoeCSOLBPB": {25};
	
	case "A3L_jailBus": {25};
	case "A3L_SchoolBus": {25};
	
	
	case "A3L_Suburban": {25};
	case "A3L_SuburbanCSO": {25};
	case "A3L_SuburbanFG": {25};
	
	case "A3L_AmberLamps": {25};
	case "A3L_Laddertruck": {25};
	
	case "A3L_Karts": {5};	
	case "A3L_Towtruck": {50};
	case "M1030": {25};

	case "A3L_Escort": {25};
	case "A3L_EscortTaxi": {25};
	case "A3L_EscortBlue": {25};
	case "A3L_EscortWhite": {25};
	case "A3L_EscortPink": {25};
	
	case "A3L_PuntoRed": {35};
	case "A3L_PuntoBlack": {35};
	case "A3L_PuntoWhite": {35};
	case "A3L_PuntoGrey": {35};
	
	case "A3L_FordKaBlue": {35};
	case "A3L_FordKaRed": {35};
	case "A3L_FordKaBlack": {35};
	case "A3L_FordKaWhite": {35};
	case "A3L_FordKaGrey": {35};
	
	case "A3L_RegalBlack": {35};
	case "A3L_RegalBlue": {35};
	case "A3L_RegalOrange": {35};
	case "A3L_RegalRed": {35};
	case "A3L_RegalWhite": {35};
	
	case "A3L_JeepWhiteBlack": {35};
	case "A3L_JeepGreenBlack": {35};
	case "A3L_JeepRedTan": {35};
	case "A3L_JeepRedBlack": {35};
	case "A3L_JeepGrayBlack": {35};
	
	case "A3L_SuburbanWhite": {45};
	case "A3L_SuburbanBlue": {45};
	case "A3L_SuburbanRed": {45};
	case "A3L_SuburbanBlack": {45};
	case "A3L_SuburbanGrey": {45};
	case "A3L_SuburbanOrange": {45};
	
	case "A3L_TahoeWhite": {45};
	case "A3L_TahoeRed": {45};
	case "A3L_TahoeBlue": {45};
	case "dar_tahoeems": {45};
	
	case "A3L_Camaro": {55};
	
	case "A3L_Taurus": {45};
	case "A3L_TaurusBlack": {45};
	case "A3L_TaurusBlue": {45};
	case "A3L_TaurusRed": {45};
	case "A3L_TaurusBlue": {45};
	case "A3L_TaurusWhite": {45};
	
	case "A3L_Challenger": {45};
	case "A3L_ChallengerGreen": {45};
	case "A3L_ChallengerRed": {45};
	case "A3L_ChallengerWhite": {45};
	case "A3L_ChallengerBlack": {45};
	case "A3L_ChallengerBlue": {45};
	
	case "A3L_ChargerBlack": {45};
	case "A3L_ChargerWhit": {45};
	case "A3L_ChargerCstm": {45};
	
	case "A3L_VolksWagenGolfGTired": {35};
	case "A3L_VolksWagenGolfGTiblack": {35};
	case "A3L_VolksWagenGolfGTiblue": {35};
    case "A3L_VolksWagenGolfGTiwhite": {35};
	
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
	
	case "A3L_Ferrari458black": {25};
	case "A3L_Ferrari458white": {25};
	case "A3L_Ferrari458blue": {25};
	
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
	case "A3L_Dumptruck": {225};

	case "BMW_M5Black": {25};
	case "BMW_M5White": {25};
	case "BMW_M5Red": {25};
	case "BMW_M5Blue": {25};

	case "A3L_Veyron": {25};
	case "A3L_Veyron_red": {25};
	case "A3L_Veyron_black": {25};
	case "A3L_Veyron_white": {25};
	case "A3L_Veyron_orange": {25};
	
	case "A3L_Atom": {25};

	case "Jonzie_Mini_Cooper_R_spec": {25};

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