/*
	File: fn_SOS.sqf
	Author: Variatox Sandrox
	Server: lakeside-reallife.de
	
	Description:
	Führt die Funktionen für den SOS-Knopf aus.
*/
private ["_sosItem"];

_sosItem = _this select 0;

if(isNull player OR !alive player) exitWith {};
if(playerSide != west) exitWith {hint localize "STR_NOTF_NotACop"}; //No cop
if(life_istazed OR lrl_knockedOut OR life_knockOut) exitWith {}; //Meeeeeeeehhh
if(player getVariable "restrained") exitWith {hint "Du kannst keine Gegenstände verwenden während du gefesselt bist!"};
if(!([false, _item ,1] call life_fnc_handleInv)) exitWith {};

[[4,format["<t size='2' color='#EAF200'>• • • - - - • • •</t><br/><t size='2.7' color='#00B4F5'>S O S</t><br/><t size='2' color='#EAF200'>• • • - - - • • •</t><br/><br/><br/><t color='#ff0000' size='1.5'>%1</t><br/><t size='1.2'><br/>Drückte Den SOS-Knopf</t><br/>", profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; 
[[0,format["SOS -- %1 -- SOS -- %1 -- SOS -- %1 -- SOS", profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; 
playSound3D ["sos_button", player, false, getPosASL player, 2, 1, 10];
