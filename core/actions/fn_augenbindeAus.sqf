/*
	File: fn_augenbindeAus.sqf
	Author: VariatoX
	Server: lakeside-reallife.de
	
	Description:
	Dem Ziel die Augenbinde entfernen.
*/

private["_target"];

_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(!(_target getVariable["isblinded",false]) || isNull _target) exitWith {hint "target already not-isblinded  oder  target isnull"};

[[player,"CL3_anim_drill_short"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
_target setVariable["isblinded",false,true];

/*814945 cutText [" ","BLACK FADED"];
814945 cutFadeOut 10;*/
//[true,"augenbinde", 1] call life_fnc_handleInv;

[[1,format["Jemand entfernt gerade deine Augenbinde..."]],"life_fnc_broadcast",_target,false] spawn life_fnc_MP;