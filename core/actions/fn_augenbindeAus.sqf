/*
	Author: James Sunderland
	File: augenbindeAus
	Server: arma-3-life.de
	
	Description:
	Augenbinde bei der Person entfernen.
*/

private["_target"];

_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(!(_target getVariable["isblinded",false]) || isNull _target) exitWith {hint "target already not-isblinded  oder  target isnull"};

_target setVariable["isblinded",false,true];

814945 cutText [" ","BLACK FADED"];
814945 cutFadeOut 5;

hint "Augenbinde Aus";