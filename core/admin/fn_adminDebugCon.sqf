#include <macro.h>
/*
	File: fn_adminDebugCon.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [] call AC_fnc_checkThatShit;};
if(__GETC__(life_adminlevel) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

createDialog "RscDisplayDebugPublic";

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [] call AC_fnc_checkThatShit;};
