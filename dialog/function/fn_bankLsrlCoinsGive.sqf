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

if(isNil "_points") exitWith {hint localize "STR_LSRLC_NoCoinsFound"; lrl_coinsCheck = false;}; //Keine Tickets gefunden
if(_points < 1) exitWith {hint localize "STR_LSRLC_NoCoinsFound"; lrl_coinsCheck = false;}; //Punkte Wert ist 0 (?)
if(!alive player) then {hint localize "STR_LSRLC_DeadAfterChecked"; lrl_coinsCheck = false;};

_lsrl_coins = _points;
_money = _lsrl_coins * 100;

man_ey_b4nK = man_ey_b4nK + _money;

hint parseText format ["<t size='1.6' color='#208208' align='center'>LSRL Coins-System</t><br/><br/><t align='center'><t size='1.1'>Es wurden dir <br/><t color='#62c736'>$%1</t><br/> gutgeschrieben.</t></t>", [_money] call life_fnc_numberText];
lrl_coinsCheck = false; //Prozedur beendet.

[1] call SOCK_fnc_updatePartial;