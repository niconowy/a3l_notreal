/*
	File: fn_augenbindeAction.sqf
	Author: James Sunderland
	Server: arma-3-life.de
	
	Description:
	Setzt die Variable, damit die Augenbinde angelegt werden kann.
*/

private["_target"];

_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _target) exitWith {};
if(player == _target) exitWith {}; //Wtf
if(player distance _target > 3) exitWith {}; //Maximalabstand zum Ziel
if!(alive _target) exitWith {}; //Ziel ist tot
if(_target getVariable "isblinded") exitWith {hint "already blinded"}; //Wir wollen dem Ziel nicht 2x die Augenbinde anlegen, oder?
if!(_target getVariable "restrained") exitWith {hint "Die Person ist nicht festgenommen. Daher kannst du auch keine Augenbinde anlegen."};
if(!isPlayer _target) exitWith {}; //Selbstverständlich.

_target setVariable["isblinded",true,true];
[[player],"life_fnc_augenbindeAn",_target,false] spawn life_fnc_MP;
hint localize "STR_MISC_AugenBinde_Attach";