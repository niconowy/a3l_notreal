/*
	File: fn_bankLsrlCoinsCheck.sqf
	Author: Marcel "Variatox" Koch
	Server: lakeside-reallife.de
	
	Description:
	Fragt die verfügbaren LSRL Coins des Forums vom Benutzer ab.
*/

if(!alive player) exitWith {closeDialog 0;}; //Spieler ist tot
if(isNull player) exitWith {}; //WAT!?!?
if(vehicle player != player) exitWith {closeDialog 0; hint "Du kannst dies vom Fahrzeug aus nicht tun!"};
if(lrl_noAction) exitWith {closeDialog 0; hint "Du kannst das momentan nicht tun!"};
if(player getVariable "restrained") exitWith {closeDialog 0; hint "Im gefesselten Zustand kannst du das nicht tun!"};
if(lrl_coinsDelay) exitWith {closeDialog 0; hint localize "STR_LSRLC_CoinsDelayActive"};
if(lrl_coinsCheck) exitWith {closeDialog 0; hint localize "STR_LSRLC_StillChecking"};

lrl_coinsCheck = true; //Keine doppelten Abfragen ;)
lrl_coinsDelay = true;

[[getPlayerUID player,playerSide,player],"TON_fnc_getLsrlCoins",false,false] spawn life_fnc_MP;

closeDialog 0;

//Coins Check nur alle 15 min.
[] spawn {
	sleep (60 * 15);
	lrl_coinsDelay = false;
};