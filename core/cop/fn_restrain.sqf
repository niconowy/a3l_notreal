/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the client.
*/
private["_restrainer","_player","_autoUnRstCD"];
_restrainer = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_player = player;
_autoUnRstCD = false;
if(isNull _restrainer) exitWith {};

//Monitor excessive restrainment
/*[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (5 * 60)};
		
		if(!(player getVariable["restrained",FALSE])) exitWith {};
		if(!([west,getPos player,30] call life_fnc_nearUnits) && (player getVariable["restrained",FALSE]) && vehicle player == player) exitWith {
			player setVariable["restrained",FALSE,TRUE];
			player setVariable["Escorting",FALSE,TRUE];
			player setVariable["transporting",false,true];
			detach player;
			titleText[localize "STR_Cop_ExcessiveRestrain","PLAIN"];
		};
	};
};*/

titleText[format[localize "STR_Cop_Retrained",_restrainer getVariable["realname",name _restrainer]],"PLAIN"];
[[player,"Cuffed"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
				
while {player getVariable "restrained"} do
{

	disableSerialization;

	if(vehicle player == player) then {
		player playMove "AmovPercMstpSnonWnonDnon_Ease";
	};
	
	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getvariable "restrained") || vehicle player != _state};
			
	if(!alive player) exitWith
	{
		player setVariable ["restrained",false,true];
		player setVariable ["Escorting",false,true];
		player setVariable ["transporting",false,true];
		detach _player;
	};
	
	if(!alive _restrainer) then {
		player setVariable ["Escorting",false,true];
		player setVariable ["transporting",false,true];
		detach player;

	//Auto-Unrestrain nach 5 min
		if(!lrl_unrestrainTimerBool && !_autoUnRstCD) then {
			if(lrl_unrestrainTimerBool) exitWith {}; //Obrige Abfrage wird ignoriert... wieso das?!?!
			if(_autoUnRstCD) exitWith {};
			
			_autoUnRstCD = true;
			
			[] spawn {
				sleep (5 * 60);
				lrl_unrestrainTimerBool = true;
			};
		};
	};
	
	if(vehicle player != player) then
	{
		//disableUserInput true;
		if(driver (vehicle player) == player) then {
			player action["eject",vehicle player]; 
			player action["GetOut",vehicle player];	//Fix für Pilotensitz
		};
	};
	
	if(lrl_unrestrainTimerBool) then {
		player setVariable ["Escorting",false,true];
		player setVariable ["transporting",false,true];
		player setVariable ["restrained",false,true];
	};
};

//disableUserInput false;
		
if(alive player) then
{
	player switchMove "";
	player setVariable ["Escorting",false,true];
	player setVariable ["transporting",false,true];
	detach player;
};