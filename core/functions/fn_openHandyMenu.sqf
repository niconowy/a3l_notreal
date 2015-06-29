/*
	File: fn_openHandyMenu.sqf
	Author: James Sunderland
	Server: arma-3-life.de
	
	Description:
	Hauptdatei zum öffnen des Handy-Menüs
*/

if(player getVariable "restrained") exitWith {
	hint "Du kannst Handy nicht verwenden, während du gefesselt bist!"; 
	closeDialog 0;
};

if(player getVariable "isblinded") exitWith {
	hint "Du kannst Handy nicht verwenden, während du eine Augenbinde trägst!"; 
	closeDialog 0;
};

createDialog "Life_my_smartphone";