#include <macro.h>
/*
	File: fn_adminTpHere.sqf
	Author: ColinM9991
	
	Description:
	Teleport selected player to you.
*/

private["_target"];
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [] call AC_fnc_checkThatShit;};

_target = lbData[2902,lbCurSel (2902)];
_target = call compile format["%1", _target];
if(isNil "_target") exitwith {};
if(isNull _target) exitWith {};
if(_unit == player) exitWith {hint localize "STR_ANOTF_Error";};

_target setPos (getPos player);
hint format["Du hast %1 zu dir teleportiert.",_target getVariable["realname",name _target]];

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [] call AC_fnc_checkThatShit;};
