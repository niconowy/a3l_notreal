/*
Filename : fn_EinsatzLicht.sqf
Author : Ragebone
Description : Handhabt alles was mit den Einsatzlichtern zutun hat.
*/
if(isServer)exitWith{};
private["_type","_veh","_state"];
_veh = _this select 0;
if(_veh == player) exitWith {hint "Klar, schraub dir das Blaulicht auf'n Kopf xD"};

if(!alive _veh) exitWith {};
if(isNull _veh) exitWith {}; 

_xcar =_veh getVariable"xcar";
_type = _xcar select 0;
_state = _xcar select 1;

if(_state) then {
	_veh setVariable["xcar",[_type,false,_xcar select 2],TRUE];
} else {
	switch(_type)do{
		//case "cop_car":{	_veh setVariable["xcar",[_type,true,nil],TRUE];	[[_veh,0.22],"life_fnc_copLights",true,false] call BIS_fnc_mp;};				
		//case "med_car":{	_veh setVariable["xcar",[_type,true,nil],TRUE];	[[_veh,0.22],"life_fnc_medicLights",true,false] call BIS_fnc_mp;};		
		//case "adac_car":{	_veh setVariable["xcar",[_type,true,nil],TRUE];	[[_veh,0.22],"life_fnc_apacLights",true,false] call BIS_fnc_mp;};	

		case "geheim_car":{
			if(isNil{_xcar select 2})then{
				_light = "Land_Camping_Light_off_F" createVehicle getPosATL player;
				switch(typeOf _veh)do{
					case "A3L_CVBlack":{				_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVGrey":{					_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVWhite":{				_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "cl3_e63_amg_black":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_white":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_lime":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_light_yellow":{	_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e60_m5_black":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_white":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_lime":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_light_yellow":{	_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
			/*
			**		U P D A T E 
			**			BLAULICHT
			*/
				//Mustang
					case "Mrshounka_mustang_mat":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_noir":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_mat_n":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_bleufonce":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_mat_b":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
				//Range Rover
					case "cl3_range_rover_white":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_lime":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_light_yellow":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_grey":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_burgundy":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_black":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
				//SUV Black
					case "cl3_suv_black":{	_light attachTo[_veh,[0, 0.8, -0.12]];};
				//Hummer
					case "Mrshounka_hummer_civ_noir":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_bleufonce":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_rouge":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_rose":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
				//RS5 Audi
					case "shounka_a3_rs5_civ_noir":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_bleufonce":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_rouge":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_jaune":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_rose":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_grise":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_violet":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_orange":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
				//Audi Silver SAL
					case "SAL_AudiCivSilver":{	_light attachTo[_veh,[-0.4, 0.1, -0.27]];};
				//Taurus
					case "A3L_TaurusBlack":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusBlue":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusRed":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusWhite":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
				//Opel Insignia
					case "cl3_insignia_white": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_purple": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_navy_blue": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_lime": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_light_yellow": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_light_blue": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_grey": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_gold": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_burgundy": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_black": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
				//BMW M6
					case "Mrshounka_bmwm6_noir": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_bleufonce": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_rouge": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_jaune": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_rose": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_grise": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_violet": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_orange": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
				//BMW M1
					case "Mrshounka_bmwm1_civ_noir": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_bleufonce": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_rouge": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_jaune": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_rose": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_grise": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_violet": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_orange": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
				//M3 DAR Mod
					case "DAR_M3CivBlack": {	_light attachTo[_veh,[-0.4, -0.1, -0.2]];};
				//AM 2015C
					case "AM_2015C_Green": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Red": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Grey": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Orange": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_White": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Black": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
				//Jonzie
					case "Jonzie_Mini_Cooper": {	_light attachTo[_veh,[-0.45, -1, -0.05]];};
				//VW Polo GTI
					case "cl3_polo_gti_lime": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_light_yellow": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_light_blue": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_grey": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_gold": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_burgundy": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_black": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
				//Golf MK2
					case "cl3_golf_mk2_light_yellow": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_light_blue": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_grey": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_gold": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_burgundy": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_black": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					
					default{deleteVehicle _light; hint "Fahrzeug unterstützt kein Blaulicht"};
				};
			};
			_veh setVariable["xcar",[_type,true,true],TRUE];	
			[[_veh,0.22],"life_fnc_ULights",true,false] call BIS_fnc_mp;
		};
		case "BL_car":{
			if(isNil{_xcar select 2})then{
				_light = "Land_Camping_Light_off_F" createVehicle getPosATL player;
				switch(typeOf _veh)do{
					case "A3L_CVBlack":{				_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVGrey":{					_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVWhite":{				_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "cl3_e63_amg_black":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];}; //minus links,vor und zurück- minus hinten,höhe
					case "cl3_e63_amg_white":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_lime":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_light_yellow":{	_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e60_m5_black":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_white":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_lime":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_light_yellow":{	_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
				//Mustang
					case "Mrshounka_mustang_mat":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_noir":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_mat_n":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_bleufonce":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_mat_b":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
				//Range Rover
					case "cl3_range_rover_white":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_lime":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_light_yellow":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_grey":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_burgundy":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_black":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
				//SUV Black
					case "cl3_suv_black":{	_light attachTo[_veh,[0, 0.8, -0.12]];};
				//Hummer
					case "Mrshounka_hummer_civ_noir":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_bleufonce":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_rouge":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_rose":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
				//RS5 Audi
					case "shounka_a3_rs5_civ_noir":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_bleufonce":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_rouge":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_jaune":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_rose":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_grise":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_violet":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_orange":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
				//Audi Silver SAL
					case "SAL_AudiCivSilver":{	_light attachTo[_veh,[-0.4, 0.1, -0.27]];};
				//Taurus
					case "A3L_TaurusBlack":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusBlue":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusRed":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusWhite":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
				//Opel Insignia
					case "cl3_insignia_white": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_purple": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_navy_blue": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_lime": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_light_yellow": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_light_blue": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_grey": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_gold": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_burgundy": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_black": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
				//BMW M6
					case "Mrshounka_bmwm6_noir": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_bleufonce": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_rouge": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_jaune": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_rose": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_grise": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_violet": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_orange": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
				//BMW M1
					case "Mrshounka_bmwm1_civ_noir": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_bleufonce": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_rouge": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_jaune": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_rose": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_grise": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_violet": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_orange": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
				//M3 DAR Mod
					case "DAR_M3CivBlack": {	_light attachTo[_veh,[-0.4, -0.1, -0.2]];};
				//AM 2015C
					case "AM_2015C_Green": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Red": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Grey": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Orange": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_White": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Black": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
				//Jonzie
					case "Jonzie_Mini_Cooper": {	_light attachTo[_veh,[-0.45, -1, -0.05]];};
				//VW Polo GTI
					case "cl3_polo_gti_lime": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_light_yellow": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_light_blue": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_grey": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_gold": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_burgundy": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_black": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
				//Golf MK2
					case "cl3_golf_mk2_light_yellow": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_light_blue": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_grey": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_gold": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_burgundy": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_black": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					default{deleteVehicle _light; hint "Fahrzeug unterstützt kein Blaulicht"};
				};
			};
			_veh setVariable["xcar",[_type,true,true],TRUE];	
			[[_veh,1],"life_fnc_ULights",true,false] call BIS_fnc_mp;
		};
	};
};