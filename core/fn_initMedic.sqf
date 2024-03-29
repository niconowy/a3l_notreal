#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/

// TFR Variables API
tf_no_auto_long_range_radio = false; 

private["_end"];

player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	disableUserInput true;
	["MedicWhitelist",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
	disableUserInput false;
};

if((str(player) in ["MEDIC_2"])) then {
	lrl_emsLeitstelle = true;
};

if(!(str(player) in ["MEDIC_2"])) then {
	switch(__GETC__(life_mediclevel)) do
	{
		case 1: {life_paycheck = life_paycheck;};
		case 2: {life_paycheck = life_paycheck + 500;};
		case 3: {life_paycheck = life_paycheck + 1000;};
		case 4: {life_paycheck = life_paycheck + 1250;};
		case 5: {life_paycheck = life_paycheck + 1500;};
		case 6: {life_paycheck = life_paycheck + 1750;};
		//case 7: {life_paycheck = life_paycheck + 3000;};
	};
} else {
	life_paycheck = life_paycheck + 1455;
};

player setVariable ["copLevel",1,true];
[] call life_fnc_spawnMenu;
[] execVM "core\initJVM.sqf";
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.