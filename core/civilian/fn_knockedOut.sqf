/*
	File: fn_knockedOut.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts and monitors the knocked out state.
*/
private["_target","_who","_obj"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_who = [_this,1,"",[""]] call BIS_fnc_param;
if(isNull _target) exitWith {};
if(_target != player) exitWith {};
if(_who == "") exitWith {};

titleText[format[localize "STR_Civ_KnockedOut",_who],"PLAIN"];
[[player,"Cl3_anim_Knockout1In"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
sleep 3.703;
[[player,"static_dead"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
_obj setPosATL (getPosATL player);
player attachTo [_obj,[0,0,0]];
sleep 8;
[[player,"CL3_anim_Knockout1End"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
detach player;
deleteVehicle _obj;
player setVariable["robbed",FALSE,TRUE];