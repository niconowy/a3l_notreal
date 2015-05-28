private["_handys","_target"];

_target = cursorTarget;

if!(_target isKindOf "Man") exitWith {hint "Das ist gar keine Person... ??"};
if!(alive _target) exitWith {hint "Dieser Person kannst du kein Handy abnehmen."};
if(player distance _target > 3) exitWith {hint "Die Person ist zu weit weg."};

_handys = ["tf_anprc148jem","tf_anprc148jem_13","tf_anprc155","tf_fadak","tf_mr3000"];

if(_handys in assignedItems cursorTarget) then {
	cursorTarget removeweapon _handys;
} else { 
	hint "Die Person hatte kein Funkgerät dabei!";
};