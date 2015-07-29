/*
	File: fn_craft.sqf
	Description: Crafting System
	Created by EdgeKiller
    Coder: EdgeKiller
*/
private["_dialog","_inv","_itemInfo","_filter"]; //Declare all private variables
if(!dialog) then { //Verify if the window is open
	createDialog "Life_craft";
};
if(player getVariable "restrained") exitWith {hint "Du hast keine deiner beiden Hände zum 'Arbeiten' frei."; closeDialog 0};
if(player getVariable "isblinded") exitWith {hint "Im Dunkeln kannst du Gegenstände herstellen? Das will ich sehen!"; closeDialog 0;};
disableSerialization; //Disable Serialization

if(life_is_processing) exitWith{
	closeDialog 2001;
	closeDialog 0;
};


_dialog = findDisplay 666; //find the craft dialog/window
_inv = _dialog displayCtrl 669; //find the listbox of items can be created
lbClear _inv; //clear the listbox

_filter = _dialog displayCtrl 673;
/*_filter lbAdd localize "STR_CRAFT_FILTER_Weapon";
_filter lbSetData[(lbSize _filter)-1,"weapon"];
_filter lbAdd localize "STR_CRAFT_FILTER_Visiere";
_filter lbSetData[(lbSize _filter)-1,"visiere"];
_filter lbAdd localize "STR_CRAFT_FILTER_Uniform";
_filter lbSetData[(lbSize _filter)-1,"uniform"];*/
_filter lbAdd localize "STR_CRAFT_FILTER_Item";
_filter lbSetData[(lbSize _filter)-1,"item"];

_filter lbSetCurSel 0;