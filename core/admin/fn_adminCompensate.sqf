#include <macro.h>
/*
	File: fn_adminCompensate.sqf
	Author: ColinM9991
	
	Description:
	Figure it out.
*/
private["_value","_action"];
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [[4,format["<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>SpawnMoney<br/><br/><br/>",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; [] call AC_fnc_checkThatShit;};
if(__GETC__(life_adminlevel) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
_value = parseNumber(ctrlText 9922);
if(_value < 0) exitWith {};
if(_value > 999999) exitWith {hint localize "STR_ANOTF_Fail"};
//if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_AIM_notnumeric"};

_action = [
	format [localize "STR_ANOTF_CompWarn",[_value] call life_fnc_numberText],
	localize "STR_Admin_Compensate",
	localize "STR_Global_Yes",
	localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if(_action) then {
	ja_dzep = ja_dzep + _value;
	hint format [localize "STR_ANOTF_Success",[_value] call life_fnc_numberText];
	closeDialog 0;
} else {
	hint localize "STR_NOTF_ActionCancel";
	closeDialog 0;
};

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [[4,format["<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>SpawnMoney<br/><br/><br/>",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; [] call AC_fnc_checkThatShit;};
