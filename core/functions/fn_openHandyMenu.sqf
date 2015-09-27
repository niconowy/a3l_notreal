/*
	File: fn_openHandyMenu.sqf
	Author: James Sunderland
	Server: arma-3-life.de
	
	Description:
	Hauptdatei zum öffnen des Handy-Menüs
*/

if(player getVariable "restrained") exitWith {
	closeDialog 0;
	hint "Du kannst Handy nicht verwenden, während du gefesselt bist!"; 
};

if(player getVariable "isblinded") exitWith {
	closeDialog 0;
	hint "Du kannst Handy nicht verwenden, während du eine Augenbinde trägst!"; 
};

if(life_is_arrested) exitWith {
	closeDialog 0;
	hint "Seit wann haben Gefangene im Gefängnis ein Handy??";
};

createDialog "Life_my_smartphone";