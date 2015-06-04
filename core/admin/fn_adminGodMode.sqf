#include <macro.h>
/*
	File: fn_adminGodMode.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
 
	Description: Enables God mode for Admin
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [] call AC_fnc_checkThatShit;};
if(__GETC__(life_adminlevel) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};


[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};
 
if(life_god) then {
	life_god = false;
	titleText ["Gott Modus AUS","PLAIN"]; titleFadeOut 2;
	player allowDamage true;
} else {
	life_god = true;
	titleText ["Gott Modus AN","PLAIN"]; titleFadeOut 2;
	player allowDamage false;
}; 

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; [] call AC_fnc_checkThatShit;};