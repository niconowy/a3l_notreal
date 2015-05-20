#include <macro.h>
/*
	File: fn_initAdac.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/

// TFR Variables API
tf_no_auto_long_range_radio = false;

private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};

_end = false;

if((str(player) in ["ADAC_1","ADAC_2","ADAC_3","ADAC_4","ADAC_5","ADAC_6","ADAC_7","ADAC_8","ADAC_9","ADAC_10"])) then {
	if((__GETC__(life_adaclevel) < 1) && (__GETC__(life_adminlevel) < 1)) then {
		["IPDWhitelist",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

switch(__GETC__(life_adaclevel)) do
{
	case 1: {life_paycheck = life_paycheck;};
	case 2: {life_paycheck = life_paycheck + 500;};
	case 3: {life_paycheck = life_paycheck + 1000;};
	case 4: {life_paycheck = life_paycheck + 1500;};
	case 5: {life_paycheck = life_paycheck + 2000;};
	//case 6: {life_paycheck = life_paycheck + 2500;};
	//case 7: {life_paycheck = life_paycheck + 3000;};
};


[] call life_fnc_spawnMenu;
[] execVM "core\welcomeadac.sqf";
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.