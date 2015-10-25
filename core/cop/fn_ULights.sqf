/*
	File: fn_ULights.sqf
	Author: mindstorm, modified by Adanteh
		re-modified by:
		Marcel Marcus "Variatox Sandrox" Koch-Weiss (lakeside-reallife.de)

	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	macht das undercover blaulicht für die geheimdienstler.
*/
if(isServer)exitWith{};
Private ["_bright","_veh","_lightRed","_lightBlue","_light","_leftRed","_xcar"];
_veh = _this select 0;	
_xcar = _veh getVariable "xcar";	
	
if(isNil "_veh" OR isNull _veh OR (isNil{_xcar})) exitWith {};

_lightBlue = [0.9,0.9,10];
//_lightBlue = [0.1, 0.1, 20];

_light = "#lightpoint" createVehicle getpos _veh;   
_light setLightColor _lightBlue; 
//_light setLightBrightness 0.2;  
//_light setLightAmbient [0.1,0.1,1];
_light setLightBrightness 1;  
_light setLightAmbient [0.9,0.9,10];

switch (typeOf _veh) do{
	case "A3L_CVBlack":{
		_light lightAttachObject [_veh, [-0.45, -0.1, 0.17]];
	};	
	case "A3L_CVGrey":{
		_light lightAttachObject [_veh, [-0.45, -0.1, 0.17]];
	};
	case "A3L_CVWhite":{
		_light lightAttachObject [_veh, [-0.45, -0.1, 0.17]];
	};
	case "cl3_e63_amg_black":{
		_light lightAttachObject [_veh, [-0.48, -0.82, 0.04]];
	};
	case "cl3_e63_amg_white":{
		_light lightAttachObject [_veh, [-0.48, -0.82, 0.04]];
	};
	case "cl3_e63_amg_lime":{
		_light lightAttachObject [_veh, [-0.48, -0.82, 0.04]];
	};
	case "cl3_e63_amg_light_yellow":{
		_light lightAttachObject [_veh, [-0.48, -0.82, 0.04]];
	};
	case "cl3_e60_m5_black":{
		_light lightAttachObject [_veh, [-0.48, -0.82, 0.16]];
	};
	case "cl3_e60_m5_white":{
		_light lightAttachObject [_veh, [-0.48, -0.82, 0.16]];
	};
	case "cl3_e60_m5_lime":{
		_light lightAttachObject [_veh, [-0.48, -0.82, 0.16]];
	};
	case "cl3_e60_m5_light_yellow":{ _light lightAttachObject [_veh, [-0.48, -0.82, 0.16]];};
/*
**	U P D A T E
**    BLAULICHT
*/
//Mustang
	case "Mrshounka_mustang_mat":{	_light lightAttachObject[_veh,[-0.5, -0.1, 1.33]];};
	case "Mrshounka_mustang_noir":{	_light lightAttachObject[_veh,[-0.5, -0.1, 1.33]];};
	case "Mrshounka_mustang_mat_n":{	_light lightAttachObject[_veh,[-0.5, -0.1, 1.33]];};
	case "Mrshounka_mustang_bleufonce":{	_light lightAttachObject[_veh,[-0.5, -0.1, 1.33]];};
	case "Mrshounka_mustang_mat_b":{	_light lightAttachObject[_veh,[-0.5, -0.1, 1.33]];};
//Range Rover
	case "cl3_range_rover_white":{	_light lightAttachObject[_veh,[0, 0.25, -0.17]];};
	case "cl3_range_rover_lime":{	_light lightAttachObject[_veh,[0, 0.25, -0.17]];};
	case "cl3_range_rover_light_yellow":{	_light lightAttachObject[_veh,[0, 0.25, -0.17]];};
	case "cl3_range_rover_grey":{	_light lightAttachObject[_veh,[0, 0.25, -0.17]];};
	case "cl3_range_rover_burgundy":{	_light lightAttachObject[_veh,[0, 0.25, -0.17]];};
	case "cl3_range_rover_black":{	_light lightAttachObject[_veh,[0, 0.25, -0.17]];};
//SUV Black
	case "cl3_suv_black":{	_light lightAttachObject[_veh,[0, 0.8, -0.12]];};
//Hummer
	case "Mrshounka_hummer_civ_noir":{	_light lightAttachObject[_veh,[-0.2, 0.87, 0.97]];};
	case "Mrshounka_hummer_civ_bleufonce":{	_light lightAttachObject[_veh,[-0.2, 0.87, 0.97]];};
	case "Mrshounka_hummer_civ_rouge":{	_light lightAttachObject[_veh,[-0.2, 0.87, 0.97]];};
	case "Mrshounka_hummer_civ_rose":{	_light lightAttachObject[_veh,[-0.2, 0.87, 0.97]];};
//RS5 Audi
	case "shounka_a3_rs5_civ_noir":{	_light lightAttachObject[_veh,[-0.5, -0.1, 0.2]];};
	case "shounka_a3_rs5_civ_bleufonce":{	_light lightAttachObject[_veh,[-0.5, -0.1, 0.2]];};
	case "shounka_a3_rs5_civ_rouge":{	_light lightAttachObject[_veh,[-0.5, -0.1, 0.2]];};
	case "shounka_a3_rs5_civ_jaune":{	_light lightAttachObject[_veh,[-0.5, -0.1, 0.2]];};
	case "shounka_a3_rs5_civ_rose":{	_light lightAttachObject[_veh,[-0.5, -0.1, 0.2]];};
	case "shounka_a3_rs5_civ_grise":{	_light lightAttachObject[_veh,[-0.5, -0.1, 0.2]];};
	case "shounka_a3_rs5_civ_violet":{	_light lightAttachObject[_veh,[-0.5, -0.1, 0.2]];};
	case "shounka_a3_rs5_civ_orange":{	_light lightAttachObject[_veh,[-0.5, -0.1, 0.2]];};
//Audi Silver SAL
	case "SAL_AudiCivSilver":{	_light lightAttachObject[_veh,[-0.4, 0.1, -0.27]];};
//Taurus
	case "A3L_TaurusBlack":{	_light lightAttachObject[_veh,[-0.4, 0.1, 0.27]];};
	case "A3L_TaurusBlue":{	_light lightAttachObject[_veh,[-0.4, 0.1, 0.27]];};
	case "A3L_TaurusRed":{	_light lightAttachObject[_veh,[-0.4, 0.1, 0.27]];};
	case "A3L_TaurusWhite":{	_light lightAttachObject[_veh,[-0.4, 0.1, 0.27]];};
//Opel Insignia
	case "cl3_insignia_white": {	_light lightAttachObject[_veh,[-0.4, -0.4, 0.07]];};
	case "cl3_insignia_purple": {	_light lightAttachObject[_veh,[-0.4, -0.4, 0.07]];};
	case "cl3_insignia_navy_blue": {	_light lightAttachObject[_veh,[-0.4, -0.4, 0.07]];};
	case "cl3_insignia_lime": {	_light lightAttachObject[_veh,[-0.4, -0.4, 0.07]];};
	case "cl3_insignia_light_yellow": {	_light lightAttachObject[_veh,[-0.4, -0.4, 0.07]];};
	case "cl3_insignia_light_blue": {	_light lightAttachObject[_veh,[-0.4, -0.4, 0.07]];};
	case "cl3_insignia_grey": {	_light lightAttachObject[_veh,[-0.4, -0.4, 0.07]];};
	case "cl3_insignia_gold": {	_light lightAttachObject[_veh,[-0.4, -0.4, 0.07]];};
	case "cl3_insignia_burgundy": {	_light lightAttachObject[_veh,[-0.4, -0.4, 0.07]];};
	case "cl3_insignia_black": {	_light lightAttachObject[_veh,[-0.4, -0.4, 0.07]];};
//BMW M6
	case "Mrshounka_bmwm6_noir": {	_light lightAttachObject[_veh,[-0.4, 0, 1.28]];};
	case "Mrshounka_bmwm6_bleufonce": {	_light lightAttachObject[_veh,[-0.4, 0, 1.28]];};
	case "Mrshounka_bmwm6_rouge": {	_light lightAttachObject[_veh,[-0.4, 0, 1.28]];};
	case "Mrshounka_bmwm6_jaune": {	_light lightAttachObject[_veh,[-0.4, 0, 1.28]];};
	case "Mrshounka_bmwm6_rose": {	_light lightAttachObject[_veh,[-0.4, 0, 1.28]];};
	case "Mrshounka_bmwm6_grise": {	_light lightAttachObject[_veh,[-0.4, 0, 1.28]];};
	case "Mrshounka_bmwm6_violet": {	_light lightAttachObject[_veh,[-0.4, 0, 1.28]];};
	case "Mrshounka_bmwm6_orange": {	_light lightAttachObject[_veh,[-0.4, 0, 1.28]];};
//BMW M1
	case "Mrshounka_bmwm1_civ_noir": {	_light lightAttachObject[_veh,[-0.4, 0.15, 1.34]];};
	case "Mrshounka_bmwm1_civ_bleufonce": {	_light lightAttachObject[_veh,[-0.4, 0.15, 1.34]];};
	case "Mrshounka_bmwm1_civ_rouge": {	_light lightAttachObject[_veh,[-0.4, 0.15, 1.34]];};
	case "Mrshounka_bmwm1_civ_jaune": {	_light lightAttachObject[_veh,[-0.4, 0.15, 1.34]];};
	case "Mrshounka_bmwm1_civ_rose": {	_light lightAttachObject[_veh,[-0.4, 0.15, 1.34]];};
	case "Mrshounka_bmwm1_civ_grise": {	_light lightAttachObject[_veh,[-0.4, 0.15, 1.34]];};
	case "Mrshounka_bmwm1_civ_violet": {	_light lightAttachObject[_veh,[-0.4, 0.15, 1.34]];};
	case "Mrshounka_bmwm1_civ_orange": {	_light lightAttachObject[_veh,[-0.4, 0.15, 1.34]];};
//M3 DAR Mod
	case "DAR_M3CivBlack": {	_light lightAttachObject[_veh,[-0.4, -0.1, -0.2]];};
//AM 2015C
	case "AM_2015C_Green": {	_light lightAttachObject[_veh,[-0.84, 0, 0.02]];};
	case "AM_2015C_Red": {	_light lightAttachObject[_veh,[-0.84, 0, 0.02]];};
	case "AM_2015C_Grey": {	_light lightAttachObject[_veh,[-0.84, 0, 0.02]];};
	case "AM_2015C_Orange": {	_light lightAttachObject[_veh,[-0.84, 0, 0.02]];};
	case "AM_2015C_White": {	_light lightAttachObject[_veh,[-0.84, 0, 0.02]];};
	case "AM_2015C_Black": {	_light lightAttachObject[_veh,[-0.84, 0, 0.02]];};
//Jonzie
	case "Jonzie_Mini_Cooper": {	_light lightAttachObject[_veh,[-0.45, -1, -0.05]];};
//VW Polo GTI
	case "cl3_polo_gti_lime": {	_light lightAttachObject[_veh,[-0.4, -0.55, 0.05]];};
	case "cl3_polo_gti_light_yellow": {	_light lightAttachObject[_veh,[-0.4, -0.55, 0.05]];};
	case "cl3_polo_gti_light_blue": {	_light lightAttachObject[_veh,[-0.4, -0.55, 0.05]];};
	case "cl3_polo_gti_grey": {	_light lightAttachObject[_veh,[-0.4, -0.55, 0.05]];};
	case "cl3_polo_gti_gold": {	_light lightAttachObject[_veh,[-0.4, -0.55, 0.05]];};
	case "cl3_polo_gti_burgundy": {	_light lightAttachObject[_veh,[-0.4, -0.55, 0.05]];};
	case "cl3_polo_gti_black": {	_light lightAttachObject[_veh,[-0.4, -0.55, 0.05]];};
//Golf MK2
	case "cl3_golf_mk2_light_yellow": {	_light lightAttachObject[_veh,[-0.4, -0.4, -0.04]];};
	case "cl3_golf_mk2_light_blue": {	_light lightAttachObject[_veh,[-0.4, -0.4, -0.04]];};
	case "cl3_golf_mk2_grey": {	_light lightAttachObject[_veh,[-0.4, -0.4, -0.04]];};
	case "cl3_golf_mk2_gold": {	_light lightAttachObject[_veh,[-0.4, -0.4, -0.04]];};
	case "cl3_golf_mk2_burgundy": {	_light lightAttachObject[_veh,[-0.4, -0.4, -0.04]];};
	case "cl3_golf_mk2_black": {	_light lightAttachObject[_veh,[-0.4, -0.4, -0.04]];};

};

_light setLightIntensity 10;
_light setLightFlareSize 0.78;
_light setLightFlareMaxDistance 150;
_light setLightUseFlare true;
_light setLightDayLight true;

_light setLightAttenuation [0.05, 0, 0, 500];

_leftRed = true;  
while{ (alive _veh)} do {  
	_xcar = _veh getVariable "xcar";	
	if((isNil{_xcar}) OR !(_xcar select 1))exitWith {};
	_bright = 10 * sunOrMoon^4 + 2,5; // HAHA  Math.... Never thought i could use ýou  	
	if(_leftRed) then{  
		_leftRed = false;
		_light setLightBrightness _bright;  
	}else {  
		_leftRed = true;  
		_light setLightBrightness 0.0;  		
	};  
	sleep (_this select 1);  

}; //WHILE END

deleteVehicle _light;

