/*
	File: fn_openFarmingMenu.sqf
	Author: VariatoX
	Server: lakeside-reallife.de
	
	Description:
	Einige Checks bevor das Farming-Menue aufgerufen wird.
*/

if(!alive player) exitWith {}; //Toter Spieler

//Tonnenweise scheiss-checks
if(player getVariable "restrained") exitWith {hint "Während du gefesselt bist, kannst du das Farm-Menü nicht aufrufen."};
if(player getVariable "isblinded") exitWith {hint "Während du eine Augenbinde trägst, kannst du das Farm-Menü nicht aufrufen."};
if(player getVariable "surrender") exitWith {hint "Während du dich ergibst, kannst du das Farm-Menü nicht aufrufen."};

if(life_knockout || life_tazed || life_action_inUse) exitWith {};

createDialog "life_farming_menu";
disableSerialization;