private["_unit","_amount"];
if(playerSide != west) exitWith {hint "Du bist kein Polizist."};
if((lbCurSel 2406) == -1) exitWith {hint "Du musst eine Person auswählen."};
if((lbCurSel 2407) == -1) exitWith {hint "Du musst eine Straftat auswählen."};
_unit = lbData [2406,lbCurSel 2406];
_unit = call compile format["%1",_unit];
_amount = lbData [2407,lbCurSel 2407];
if(isNil "_unit") exitWith {};
if(side _unit != civilian) exitWith {hint "Du kannst nur Zivilisten auf die Fahndungsliste setzen." };
if(_unit == player) exitWith {hint "Du kannst dich nicht selbst auf die Fahndungsliste setzen... geh zum FBI und stelle dich.";};
if(isNull _unit) exitWith {};

[[1,format["%1 wurde zur Fahndung ausgeschrieben.",_unit getVariable["realname",name _unit],_amount,getPlayerUID _unit]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

[[getPlayerUID _unit,_unit getVariable["realname",name _unit],_amount],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; 