/*
	File: fn_searchAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the searching process.
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
hint localize "STR_NOTF_Searching";
//[[player,"PatDown"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
sleep 2;
if(player distance _unit > 3) exitWith {hint localize "STR_NOTF_PersonTooFarAway"};
if(!alive player || !alive _unit) exitWith {hint localize "STR_NOTF_CannotSearchPerson"};
[[player],"life_fnc_searchClient",_unit,false] spawn life_fnc_MP;
life_action_inUse = true;