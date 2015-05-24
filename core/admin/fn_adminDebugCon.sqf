#include <macro.h>
/*
	File: fn_adminDebugCon.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [1] call AC_fnc_checkThatShit;};
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint "You have no business using this";};

createDialog "RscDisplayDebugPublic";

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [1] call AC_fnc_checkThatShit;};