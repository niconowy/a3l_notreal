#include <macro.h>
/*
	File: fn_adminGodMode.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
 
	Description: Enables God mode for Admin
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [[4,format["<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>DisablePlayerDamage<br/><br/><br/>",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; [] call AC_fnc_checkThatShit;};
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};


[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};
 
if(life_god) then {
	life_god = false;
	titleText ["Gott Modus AN","PLAIN"]; titleFadeOut 2;
	player allowDamage true;
} else {
	life_god = true;
	titleText ["Gott Modus AUS","PLAIN"]; titleFadeOut 2;
	player allowDamage false;
}; 

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [[4,format["<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/><t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>DisablePlayerDamage<br/><br/><br/>",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; [] call AC_fnc_checkThatShit;};
