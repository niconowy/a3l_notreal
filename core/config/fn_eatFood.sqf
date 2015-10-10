/*
	File: fn_eatFood.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main handling system for eating food.
	*Needs to be revised and made more modular and more indept effects*
*/
private["_food","_val","_sum"];
_food = [_this,0,"",[""]] call BIS_fnc_param;
if(_food == "") exitWith {};

if([false,_food,1] call life_fnc_handleInv) then {
	switch (_food) do
	{
		case "apple": {_val = 10};
		case "rabbit":{ _val = 20};
		case "salema": {_val = 30};
		case "ornate": {_val = 25};
		case "mackerel": {_val = 30};
		case "tuna": {_val = 100};
		case "mullet": {_val = 80};
		case "catshark": {_val = 100};
		case "turtle": {_val = 100};
		case "turtlesoup": {_val = 100};
		case "donuts": {_val = 35};
		case "tbacon": {_val = 35};
		case "peach": {_val = 10};
		case "keks": {_val = 5};
		case "pizza": {_val = 50};
	};
	playsound "essen";
	_sum = life_hunger + _val;
	if(_sum > 100) then {_sum = 100; player setFatigue 1; titleText ["Ich fühle mich total überfressen...","PLAIN"];};
	//TODO -- Herzinfarkt Risiko
	life_hunger = _sum;
};