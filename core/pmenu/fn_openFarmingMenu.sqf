/*
	File: fn_openFarmingMenu.sqf
	Author: VariatoX
	Server: lakeside-reallife.de
	
	Description:
	Einige Checks bevor das Farming-Menue aufgerufen wird.
*/
#define Btn 1 40111
#define Btn 2 40112
#define Title 47400
private ["_display","_Btn1","_Btn2"];
if(!alive player) exitWith {}; //Toter Spieler

//Tonnenweise scheiss-checks
/*if(player getVariable "restrained") exitWith {hint "Während du gefesselt bist, kannst du das Farm-Menü nicht aufrufen."};
if(player getVariable "isblinded") exitWith {hint "Während du eine Augenbinde trägst, kannst du das Farm-Menü nicht aufrufen."};
if(player getVariable "surrender") exitWith {hint "Während du dich ergibst, kannst du das Farm-Menü nicht aufrufen."};*/

if(life_knockout || life_tazed || life_action_inUse) exitWith {};

if(!dialog) then {
	createDialog "Life_farming_menu";
};
disableSerialization;
_display = findDisplay 40100;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;

if(playerSide == civilian) then {
	_Btn1 ctrlSetText localize "STR_FarmMenu_PickUse";
	_Btn1 buttonSetAction "spawn life_fnc_checkPickaxe;";
	
	_Btn2 ctrlSetText localize "STR_FarmMenu_AxeUse";
	_Btn2 buttonSetaction "spawn life_fnc_checkAxe;";
};