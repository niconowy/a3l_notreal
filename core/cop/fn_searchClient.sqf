/*
	File: fn_searchClient.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Searches the player and he returns information back to the player.
*/
private["_cop","_inv","_var","_value"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};
_inv = [];
//_robber = false;
//Illegal items
{
	_var = [_x select 0,0] call life_fnc_varHandle;
	_value = missionNamespace getVariable _var;
	if(_value > 0) then
	{
		_inv pushBack [_x select 0,_value];
		[false,(_x select 0),_value] call life_fnc_handleInv;
	};
} foreach life_illegal_items;

/*if(!life_use_atm) then 
{
	ja_dzep = 0;
	_robber = true;
};*/

[[player,_inv],"life_fnc_copSearch",_cop,false] spawn life_fnc_MP;