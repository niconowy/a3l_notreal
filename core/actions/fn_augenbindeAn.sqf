/*
	File: fn_augenbindeAn.sqf
	Author: James Sunderland
	Server: arma-3-life.de
	
	Description:
	Dem Spieler wird die Augenbinde angelegt.
*/

private["_caller"];

_caller = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _caller) exitWith {};

while {player getVariable "isblinded"} do {

	814945 cutText [" ","BLACK FADED"];
	814945 cutFadeOut 99999999;

	if(!alive _caller) exitWith {
		player setVariable ["isblinded",false,true];
		814945 cutFadeOut 10;
		hint localize "STR_MISC_AugenBinde_DistanceTooBig";
	};
	
	if(!alive player) exitWith {
		player setVariable ["isblinded",false,true];
		814945 cutFadeOut 1;
	};
	
	if(player distance _caller >= 50) exitWith {
		player setVariable ["isblinded",false,true];
		814945 cutFadeOut 10;
		hint localize "STR_MISC_AugenBinde_DistanceTooBig";
	};

};