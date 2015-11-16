/*
	File: fn_bankLsrlCoinsGive.sqf
	Author: Marcel "Variatox" Koch
	Server: lakeside-reallife.de
	
	Description:
	Wandelt die verfügbaren Coins in Geld um und schreibt dem Benutzer das Geld zu.
*/

private ["_coins","_points","_money","_lsrl_coins"];

if(!lrl_coinsCheck) exitWith {hint "STR_LSRLC_CoinCheater"}; //Vorher keine Coins geprüft?

_points = _this select 0;
_lsrl_coins = _points;

if(isNil "_points") exitWith {hint localize "STR_LSRLC_NoCoinsFound"; lrl_coinsCheck = false;}; //Keine Tickets gefunden
if(_lsrl_coins < 1) exitWith {hint localize "STR_LSRLC_NoCoinsFound"; lrl_coinsCheck = false;}; //Punkte Wert ist 0 (?)
if(!alive player) then {hint localize "STR_LSRLC_DeadAfterChecked"; lrl_coinsCheck = false;};

_money = _lsrl_coins * 100;

man_ey_b4nK = man_ey_b4nK + _money;

hint format ["Es wurden dir %1 gutgeschrieben.", _money];

lrl_coinsCheck = false; //Prozedur beendet.

[1] call SOCK_fnc_updatePartial;