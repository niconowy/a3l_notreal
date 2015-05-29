/*
	Author: James Sunderland
	File: augenbindeAction
	Server: arma-3-life.de
	
	Description:
	Augenbinde aktions-auswahl (vorh. Schritt)
*/

private["_target"];

_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _target) exitWith {};
if(player == _target) exitWith {};
if(player distance _target > 3) exitWith {};
if!(alive _target) exitWith {};
if(_target getVariable "isblinded") exitWith {hint "already blinded"};
if(!isPlayer _target) exitWith {};

_target setVariable["isblinded",true,true];
[[player],"life_fnc_augenbindeAn",_target,false] spawn life_fnc_MP;