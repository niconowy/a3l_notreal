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
				_Blight = "Land_Camping_Light_off_F" createVehicle getPosATL player;
				switch(typeOf _veh)do{
					case "A3L_CVBlack":{				_Blight attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVGrey":{					_Blight attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVWhite":{				_Blight attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "cl3_e63_amg_black":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_white":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_lime":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_light_yellow":{	_Blight attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e60_m5_black":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_white":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_lime":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_light_yellow":{	_Blight attachTo[_veh,[-0.48, -0.82, 0.16]];};
					//case "DAR_TahoePolice":{		_Blight attachTo[_veh,[-0.6, -0.2, 0.45]];};
					//case "cl3_lada":{				_Blight attachTo[_veh,[-0.6, -0.2, 0.35]];};
					//case "C_Hatchback_01_sport_F":{	_Blight attachTo[_veh,[-0.6, -0.2, 0.35]];};
					default{deleteVehicle _Blight; hint "Fahrzeug unterstützt kein Blaulicht"};
				};
			};
			_veh setVariable["xcar",[_type,true,true],TRUE];	
			[[_veh,0.22],"life_fnc_ULights",true,false] call BIS_fnc_mp;
		};
		case "BL_car":{
			if(isNil{_xcar select 2})then{
				_Blight = "Land_Camping_Light_off_F" createVehicle getPosATL player;
				switch(typeOf _veh)do{
					case "A3L_CVBlack":{				_Blight attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVGrey":{					_Blight attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVWhite":{				_Blight attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "cl3_e63_amg_black":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.04]];}; //minus links,vor und zurück- minus hinten,höhe
					case "cl3_e63_amg_white":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_lime":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_light_yellow":{	_Blight attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e60_m5_black":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_white":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_lime":{			_Blight attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_light_yellow":{	_Blight attachTo[_veh,[-0.48, -0.82, 0.16]];};
					//case "DAR_TahoePolice":{		_Blight attachTo[_veh,[-0.6, -0.2, 0.45]];};
					//case "cl3_lada":{		_Blight attachTo[_veh,[-0.6, -0.2, 0.35]];};
					//case "C_Hatchback_01_sport_F":{	_Blight attachTo[_veh,[-0.6, -0.2, 0.35]];};
					default{deleteVehicle _Blight; hint "Fahrzeug unterstützt kein Blaulicht"};
				};
			};
			_veh setVariable["xcar",[_type,true,true],TRUE];	
			[[_veh,0.22],"life_fnc_ULights",true,false] call BIS_fnc_mp;
		};
	};
};