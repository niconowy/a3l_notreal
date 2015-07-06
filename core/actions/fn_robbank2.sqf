/*         
	file: fn_robShops.sqf
	Author: MrKraken
	Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
	Description:
	Executes the rob shob action!
	Idea developed by PEpwnzya v2.0
*/ 
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_alarm"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name

if !(alive _robber) exitWith {};

_alarm = false;
_rip = true;
_kassa = 225000 + round(random 100000); //setting the money in the registry, anywhere from 3000 to 15000. 
[[_shop,_robber,_action,-1],"TON_fnc_shopStateBank",false,false] spawn life_fnc_MP; //sending information to the server so the animations and removeaction can be performed for all players if the checks clear. 

hint "Was? Ein Alarm? Die Cops werden gleich hier sein!!";
[[2,"NOTRUF: Los-Diablos Bank wird ausgeraubt"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
[_shop,"bankalarm"] call life_fnc_globalSound;
_alarm = true;


//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Es wird ausgeraubt , bleib in der nähe (5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then
{
    while{true} do
    {
				player action ["SwitchWeapon", player, player, 100];
		if(animationState player != "CL3_anim_Gathering1" ) then {
			player action ["SwitchWeapon", player, player, 100];
			[[player,"CL3_anim_Gathering1"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
			sleep  8.55;
			_cP = _cP + 0.01;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["Es wird ausgeraubt , bleib 15 Minuten in Reichweite (5m) (%1%2)...",round(_cP * 100),"%"];
			if(_cP >= 1) exitWith {player playActionNow "stop";};
			if(_robber distance _shop > 3) exitWith {player playActionNow "stop";};
			if!(alive _robber) exitWith {player playActionNow "stop";};
		};
	};
		if(_alarm) then
		{
			_Pos = position player; // by ehno: get player pos
			_marker = createMarker ["Marker200", _Pos]; //by ehno: Place a Maker on the map
			"Marker200" setMarkerColor "ColorRed";
			"Marker200" setMarkerText "!ACHTUNG! Bankraub Zivile Personen entfernen !ACHTUNG!";
			"Marker200" setMarkerType "mil_warning";
		};
    }; // the loop continues til the progressbar is full, distance is exceeded or robber dies. 
    if!(alive _robber) exitWith { 
		_rip = false;
		deleteMarker "Marker200";
	};
	if(life_istazed) exitwith {
		hint "Der Raub ist fehlgeschlagen du wurdest getazert!";
		deleteMarker "Marker200"; // by ehno delete maker
	};
    if(_robber distance _shop > 3) exitWith { 
		hint "Du warst zu weit weg! - Der Kassierer hat sein Geld in Sicherheit gebracht.";
		5 cutText ["","PLAIN"];
		_rip = false;
		deleteMarker "Marker200"; 
	};
	if(vehicle player != _robber) exitWith {hint "Raus aus dem Fahrzeug, du Pussy!!"; };
    5 cutText ["","PLAIN"];
    titleText[format["Du hast %1 geklaut, schüttel die Cops ab!",[_kassa] call life_fnc_numberText],"PLAIN"];
    ja_dzep = ja_dzep + _kassa; 
    _rip = false;
    life_use_atm = false;
    life_use_atm = true; // Robber can not use the ATM at this point.
    if!(alive _robber) exitWith {};
    [[1,format["112 - Los Diablos: %1 wurde gerade ausgeraubt. Kasseninhalt: $%2", _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
    [[1,format["NEWS: Los Diablos: %1 wurde gerade ausgeraubt. Kasseninhalt: $%2", _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
    //[[getPlayerUID _robber,name _robber,"100"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; 
};
[[_shop,_robber,_action,0],"TON_fnc_shopStateBank",false,false] spawn life_fnc_MP;