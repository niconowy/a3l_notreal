/*
	Tortures the player
*/
private["_unit","_rand","_damage", "_fatigue"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
if(life_action_inUse) exitWith {};

if(player distance _unit > 3 || !alive player || !alive _unit) exitWith {hint "Du kannst die Person nicht foltern."};

life_action_inUse = true;

_rand = [0,4] call life_fnc_randomRound;

switch(_rand) do 
{
	case 0:
	{
		hintSilent "Du hast der Person in den Magen geschlagen.";
		//Play sound on _unit
		
		//Damage _unit
		_damage = damage _unit;
		_damage = _damage + 0.1;
		
		_unit setDamage _damage;
		
		//Fatigure unit
		_fatigue = getFatigue _unit;
		_fatigue = _fatigue + 0.5;
		
		if(_fatigue >= 1) then { _fatigue = 1; };
		
		_unit setFatigue _fatigue;
	
		[player,"punch"] call life_fnc_globalSound;
	};
	case 1:
	{
		hintSilent "Du hast der Person eine Ohrfeige gegeben.";
		//Play sound on _unit
		
		//Damage _unit
		_damage = damage _unit;
		_damage = _damage + 0.05;
		
		_unit setDamage _damage;
		
		//Fatigure unit
		_fatigue = getFatigue _unit;
		_fatigue = _fatigue + 0.1;
		
		if(_fatigue >= 1) then { _fatigue = 1; };
		
		[player,"punch"] call life_fnc_globalSound;
	};
	case 2:
	{
		hintSilent "Du hast der Person gegen das Schienbein getreten.";
		//Play sound on _unit
		
		//Damage _unit
		_damage = damage _unit;
		_damage = _damage + 0.10;
		
		_unit setDamage _damage;
		
		//Fatigure unit
		_fatigue = getFatigue _unit;
		_fatigue = _fatigue + 0.25;
		
		if(_fatigue >= 1) then { _fatigue = 1; };
		
		[player,"punch_break"] call life_fnc_globalSound;
	};
	case 3:
	{
		hintSilent "Du hast der Person in die 'Weichteile' getreten.";
		//Play sound on _unit
		
		//Damage _unit
		_damage = damage _unit;
		_damage = _damage + 0.25;
		
		_unit setDamage _damage;
		
		_unit setFatigue 1;
		[player,"punch_balls"] call life_fnc_globalSound;
	};
	default
	{
		hintSilent "Du hast der Person einige Zähne ausgeschlagen.";
		//Play sound on _unit
		
		//Damage _unit
		_damage = damage _unit;
		_damage = _damage + 0.15;

		_unit setDamage _damage;
		
		//Fatigure unit
		_fatigue = getFatigue _unit;
		_fatigue = _fatigue + 0.3;
		
		if(_fatigue >= 1) then { _fatigue = 1; };
		
		[player,"punch"] call life_fnc_globalSound;
	};
};

life_action_inUse = false;
//[[getPlayerUID player,name player,"800"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;