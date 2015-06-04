#include <macro.h>
/*
	File: fn_adminDebugCon.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [[4,format["<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>OpenDebugConsole<br/><br/><br/>",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; [] call AC_fnc_checkThatShit;};
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint "You have no business using this";};

createDialog "RscDisplayDebugPublic";

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [[4,format["<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>OpenDebugConsole<br/><br/><br/>",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; [] call AC_fnc_checkThatShit;};
