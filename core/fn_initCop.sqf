#include <macro.h>
/*
	File: fn_initCop.sqf
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

if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((str(player) in ["cop_1","cop_2","cop_3"])) then {
	if((__GETC__(life_adminlevel) == 0)) then {
		disableUserInput true;
		["NurAdmin",false,true] call BIS_fnc_endMission;
		sleep 30;
		disableUserInput false;
	};
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0)) then {
		disableUserInput true;
		["CopWhitelist",false,true] call BIS_fnc_endMission;
		sleep 30;
		disableUserInput false;
	};
};

if((str(player) in ["cop_4"])) then {
	if((__GETC__(life_coplevel) <= 1)) then {
		disableUserInput true;
		["CopLStelleWhitelist",false,true] call BIS_fnc_endMission;
		sleep 30;
		disableUserInput false;
	};
	lrl_copLeitstelle = true;
};

if(!(str(player) in ["cop_4"]) && !(lrl_copLeitstelle)) then {
	switch(__GETC__(life_coplevel)) do
	{
		case 1: {life_paycheck = life_paycheck;};
		case 2: {life_paycheck = life_paycheck + 500;};
		case 3: {life_paycheck = life_paycheck + 1000;};
		case 4: {life_paycheck = life_paycheck + 1500;};
		case 5: {life_paycheck = life_paycheck + 2000;};
		case 6: {life_paycheck = life_paycheck + 2500;};
		case 7: {life_paycheck = life_paycheck + 3000;};
		case 8: {life_paycheck = life_paycheck + 3000;};
		case 9: {life_paycheck = life_paycheck + 3000;};
		case 10: {life_paycheck = life_paycheck + 3500;};
		case 11: {life_paycheck = life_paycheck + 3750;};
		case 12: {life_paycheck = life_paycheck + 3850;};
	};
} else {
	life_paycheck = life_paycheck + 3250;
};

player setVariable["rank",(__GETC__(life_coplevel)),true];
player setVariable ["copLevel",1,true];
[] call life_fnc_spawnMenu;
[] execVM "core\initJVM.sqf";
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.