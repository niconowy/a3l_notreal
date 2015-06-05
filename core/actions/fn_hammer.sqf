/*
	File: fn_hammer.sqf
	Author: James Sunderland
	
	Description:
	Die drei verschiedenen Hammer-Schlageffekte des Richterhammers abspielen.
*/

private["_hammer"];

_hammer = _this select 3;

if(isNil {_hammer}) exitWith {};

if((__GETC__(life_adaclevel) == 11) && playerSide == east) then {
	if(_hammer == "hammer1") then {
		[player, "hammer_kurz"] call life_fnc_globalSound;
	};

	if(_hammer == "hammer2") then {
		[player, "hammer_mittel"] call life_fnc_globalSound;
	};

	if(_hammer == "hammer3") then {
		[player, "hammer_lang"] call life_fnc_globalSound;
	};
} else {
hint "Du bist kein Richter!";
};

sleep 7; //Sound-Spam Verhindern