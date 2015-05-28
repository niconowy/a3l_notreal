#include <macro.h>
/*
	File: fn_adminTeleport.sqf
	Author: ColinM9991
	Credits: To original script author(s)
	Description:
	Teleport to chosen position.
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [[4,format["<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>SetPosRestriction<br/><br/><br/>",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; [] call AC_fnc_checkThatShit;};

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};

tele={
	_pos = [_this select 0, _this select 1, _this select 2];
	(vehicle player) setpos [_pos select 0, _pos select 1, 0];
	onMapSingleClick "";
	openMap [false, false];
	hint "You have teleported to your selected position";
};
openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call tele";

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [[4,format["<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>SetPosRestriction<br/><br/><br/>",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; [] call AC_fnc_checkThatShit;};
