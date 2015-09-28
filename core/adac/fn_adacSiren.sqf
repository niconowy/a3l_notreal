/*
	Author: Bryan "Tonic" Boardwine, edit by lakeside-reallife.de
	
	Description:
	Start playing the siren for IPD - adac
*/


private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle) exitWith {};
if(isNil {_vehicle getVariable "siren"}) exitWith {};

while {true} do
{
	if(!(_vehicle getVariable "siren")) exitWith {};
	if(count (crew (_vehicle)) == 0) then {_vehicle setVariable["siren",false,true]};
	if(!alive _vehicle) exitWith {};
	if(isNull _vehicle) exitWith {};
	_vehicle say3D "ipdSiren";
	sleep 1.179320;
	if(!(_vehicle getVariable "siren")) exitWith {};
};
