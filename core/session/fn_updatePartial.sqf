#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sends specific information to the server to update on the player,
	meant to keep the network traffic down with large sums of data flowing
	through life_fnc_MP
*/
private["_mode","_packet","_array","_flag"];
_mode = [_this,0,0,[0]] call BIS_fnc_param;
_packet = [steamid,playerSide,nil,_mode];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"}; case east: {"adac"};};

switch(_mode) do {
	case 0: {
		_packet set[2,doofi_b4r5];
	};
	
	case 1: {
		_packet set[2,man_ey_b4nK];
	};
	
	case 2: {
		{
			if(_x select 1 == _flag) then
			{
				_array pushBack [_x select 0,(missionNamespace getVariable (_x select 0))];
			};
		} foreach life_licenses;
		
		_packet set[2,_array];
	};
	
	case 3: {
		[] call life_fnc_saveGear;
		_packet set[2,life_gear];
	};
	
	case 4: {
		//Not yet implemented
	};
	
	case 5: {
		_packet set[2,life_is_arrested];
	};
	
	case 6: {
		_packet set[2,doofi_b4r5];
		_packet set[4,man_ey_b4nK];
	};
};

[_packet,"DB_fnc_updatePartial",false,false] call life_fnc_MP;