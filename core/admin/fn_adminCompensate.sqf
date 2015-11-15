#include <macro.h>
/*
	File: fn_adminCompensate.sqf
	Author: ColinM9991
	
	Description:
	Figure it out.
*/
private["_value","_action"];
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [] call AC_fnc_checkThatShit;};
if(__GETC__(life_adminlevel) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
if(!(getPlayerUID player in (life_8_b4lls))) exitWith {closeDialog 0; [1,player] call LRLAC_fnc_busted;};
_value = parseNumber(ctrlText 9922);
if(_value < 0) exitWith {};
if(_value > 100000) exitWith {hint "Keine Werte über 100.000!"};
//if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_AIM_notnumeric"};

_action = [
	format [localize "STR_ANOTF_CompWarn",[_value] call life_fnc_numberText],
	localize "STR_Admin_Compensate",
	localize "STR_Global_Yes",
	localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if(_action) then {
	doofi_b4r5 = doofi_b4r5 + _value;
	hint format [localize "STR_ANOTF_Success",[_value] call life_fnc_numberText];
	closeDialog 0;
} else {
	hint localize "STR_NOTF_ActionCancel";
	closeDialog 0;
};
