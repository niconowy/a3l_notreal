/*
	File: fn_umbrellus.sqf
	Author: Bryan "Tonic" Boardwine
	Edit by: Variatox Sandrox
	
	Description:
	Starts the umbrella-theme song (hearable for other player)
*/
private["_vehicle"];

_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle) exitWith {};
if(isNil {_vehicle getVariable "umbrellus2"}) exitWith {};

while {true} do
{
	if(!(_vehicle getVariable "umbrellus2")) exitWith {};
	if(count (crew (_vehicle)) == 0) then {_vehicle setVariable["umbrellus2",false,true]};
	if(!alive _vehicle) exitWith {};
	if(isNull _vehicle) exitWith {};

	_vehicle say3D "umbrellam2";

	sleep 20;

	if(!(_vehicle getVariable "umbrellus2")) exitWith {};
};