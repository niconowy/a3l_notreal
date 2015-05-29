/*
	Author: James Sunderland
	File: augenbindeAus
	Server: arma-3-life.de
	
	Description:
	Augenbinde bei der Person anlegen.
*/

private["_unit"];

_caller = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _caller) exitWith {};

while {player getVariable "isblinded"} do {

	814945 cutText [" ","BLACK FADED"];
	814945 cutFadeOut 99999999;

	if(!alive _caller) exitWith {
		player setVariable ["isblinded",false,true];
		814945 cutFadeOut 5;
	};
	
	if(!alive player) exitWith {
		player setVariable ["isblinded",false,true];
		814945 cutFadeOut 5;
	};
	
	if(player distance _caller >= 50) exitWith {
		player setVariable ["isblinded",false,true];
		814945 cutFadeOut 5;
	};

};

hint "Augenbinde An";