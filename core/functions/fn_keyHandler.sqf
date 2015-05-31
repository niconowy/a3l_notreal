/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
#include <macro.h>
private ["_coplevel","_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","_player","_copPlayer","_ipdPlayer","_medPlayer"];
_player = player;
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;
_veh = vehicle player;
_cursorT = cursorTarget;

_copPlayer = if(playerSide == west) then {true} else {false};
_medPlayer = if(playerSide == independent) then {true} else {false};
_ipdPlayer = if(playerSide == east) then {true} else {false};
_coplevel = if(__GETC__(life_donator) >= 2) then {true} else {false};	// Donator Level abhängig! 2-3 = State, 4-5 = FBI

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0}; //46 war 219
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers; [] spawn life_fnc_medMarkers;}};
			case east: {if(!visibleMap) then {[] spawn life_fnc_adacMarkers; [] spawn life_fnc_adacMarker;}};
		};
	};
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull _cursorT && _cursorT isKindOf "Man" && (isPlayer _cursorT) && alive _cursorT && _cursorT distance player < 3 && !(_cursorT getVariable "Escorting") && !(_cursorT getVariable "restrained") && speed _cursorT < 1 && !(player getVariable ["restrained", false])) then
		{
			[] call life_fnc_restrainAction;
		};
		
		//Rebellfesseln
		if(_shift && playerSide == civilian && (license_civ_rebel) && !isNull _cursorT && _cursorT isKindOf "Man" && (isPlayer _cursorT) && alive _cursorT && _cursorT distance player < 3 && !(_cursorT getVariable "Escorting") && !(_cursorT getVariable "restrained") && speed _cursorT < 1 && !(player getVariable ["restrained", false]) && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "") then
		{
			[] call life_fnc_restrainAction;
		};
	};

	//Q Key
    case 16:
    {    
        if((!life_action_inUse) && (vehicle player == player)) then // +  && (!life_fnc_surrender)
        {
            {
                _str = [_x] call life_fnc_varToStr;
                _val = missionNameSpace getVariable _x;
                if(_val > 0 ) then
                {
                    if( _str == "Spitzhacke" || _str == "pickaxe" ) then
                    {
                        [] spawn life_fnc_pickAxeUse;
                    };
                };
            } foreach life_inv_items;
        }
    };
	
	//Niederschlagen
	case 34:
	{
		if(_shift && playerSide != independent && !isNull _cursorT && _cursorT isKindOf "Man" && isPlayer _cursorT && alive _cursorT && _cursorT distance player <= 1.9 && _speed < 15) then
		{
			if((animationState _cursorT) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
			{
				[_cursorT] spawn life_fnc_knockoutAction;
				//player say3D "knockout";
				[player,"knockout"] call life_fnc_globalSound;
			};
			_handled = true;
		};
	};

	case 46:
	{
		if(!_alt && !_ctrlKey && _shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} 
				else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};	
	
	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((_cursorT isKindOf "Car" OR _cursorT isKindOf "Air" OR _cursorT isKindOf "Ship" OR _cursorT isKindOf "House_F") && player distance _cursorT < 7 && vehicle player == player && alive _cursorT) then
				{
					if(_cursorT in life_vehicles OR {!(_cursorT getVariable ["locked",true])}) then
					{
						[_cursorT] call life_fnc_openInventory;
					};
				};
			};
		};
	};
	//L Key?
	case 38:{
		if(_veh != player)then{
			if(_shift && !_ctrlKey)exitWith{		
				true;	// direct returns because its an exitWith
				if((driver _veh) == player)then{				
					if!(isNil{_veh getVariable "xcar"})then{	
						[_veh] spawn life_fnc_EinsatzLicht;				
					}else{
						if(life_inv_blaulicht != 0 )then{
							life_inv_blaulicht = life_inv_blaulicht - 1;
							_veh setVariable["xcar",["BL_car",false,nil],true];
						};
					};							
				};												
			};
			if(_ctrlKey && !_shift)exitWith{	
				true;		
				if((driver _veh) == player)then{
					if!(isNil {_veh getVariable "xcar"})then{
						private["_xcar"];
						_xcar =_veh getVariable "xcar";		
						if!(isNil{_xcar select 2})then{					
							if(_xcar select 0 == "BL_car") then {								
								life_inv_blaulicht = life_inv_blaulicht + 1;		
								_veh setVariable["xcar",nil,true];
							}else{
								_veh setVariable["xcar",[_xcar select 0,false,nil],true];
							};														
							{
								if(typeOf _x == "Land_Camping_Light_off_F")then{
									detach _x;
									deleteVehicle _x;
								};
							} forEach attachedObjects _veh;						
						};										
					};	
				};
			};
		};	
		if(!_alt && !_ctrlKey && _veh == player) exitWith {true; [] call life_fnc_radar; };		
	};
	
	    //F Key
	case 33: {
		if(_copPlayer && _coplevel &&_ctrlKey) then {				// ***** Polizei Sirene (FBI UND STATEPOLICE) *******
			if(vehicle player != player && !life_siren_active &&((driver vehicle player) == player)) then {
				[] spawn {
					life_siren_active = true;
					sleep 4.7;
					life_siren_active = false;
				};
					_veh = vehicle player;
					if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
					
					if((_veh getVariable "siren")) then {
						titleText ["= Wail-Sirene AUS =","PLAIN"];
						_veh setVariable["siren",false,true];
					} else {
						titleText ["= Wail-Sirene AN =","PLAIN"];
						_veh setVariable["siren",true,true];
						[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
					};
			};
		};
/*		
		if(_medPlayer && _ctrlKey) then {				// ***** Medic Sirene *******
			if(vehicle player != player && !life_medSiren_active &&((driver vehicle player) == player)) then {
				[] spawn {
					life_medSiren_active = true;
					sleep 4.1;
					life_medSiren_active = false;
				};
					_veh = vehicle player;
					if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
					
					if((_veh getVariable "siren")) then {
						titleText ["= Einsatz-Sirene AUS =","PLAIN"];
						_veh setVariable["siren",false,true];
					} else {
						titleText ["= Einsatz-Sirene AN =","PLAIN"];
						_veh setVariable["siren",true,true];
						[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
					};
			};
		};
	
		if(_ipdPlayer && _ctrlKey) then {				// ***** IPD Sirene *******
			if(vehicle player != player && !life_ipdSiren_active &&((driver vehicle player) == player)) then {
				[] spawn {
					life_ipdSiren_active = true;
					sleep 3.2;
					life_ipdSiren_active = false;
				};
					_veh = vehicle player;
					if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
					
					if((_veh getVariable "siren")) then {
						titleText ["= Einsatz-Sirene AUS =","PLAIN"];
						_veh setVariable["siren",false,true];
					} else {
						titleText ["= Einsatz-Sirene AN =","PLAIN"];
						_veh setVariable["siren",true,true];
						[[_veh],"life_fnc_adacSiren",nil,true] spawn life_fnc_MP;
					};
			};
		};
		*/
	};
	
	
	
	
	//Y Player Menu
		case 21: {
					if(!_alt && !_ctrlKey && !dialog) then {
					[] call life_fnc_p_openMenu;
					};
		};
	/*{
		//if(!_alt && _ctrlKey && !dialog && !(player getVariable["restrained",false]) && !(player getVariable["restrainedziv",false])) then
		/*if(!_alt && !dialog && !(player getVariable["restrained",false]) && !(player getVariable["restrainedziv",false])) then
		{
			createdialog "playerSettings";
		};*/
		/*if(!_alt && !_ctrlKey && !dialog && !(player getVariable["restrained",false]) && !(player getVariable["restrainedziv",false])) then
		{
			//[] call fnc_opentablet;
			[] call life_fnc_p_openMenu;
		};
	};*/
	
	case 24:
	{
		if(_shift && _alt && _ctrlKey && !dialog) then
		{
			createdialog "life_admin_menu";
		};

	};

	
	//F Key
/*	case 33:				// Was zur Hölle soll das sein?!
	{
		if(playerSide in [west] && vehicle player != player && (__GETC__(life_donator) == 3) && !life_siren_active && ((driver vehicle player) == player)) then
		{
			[] spawn
			{
				life_siren_active = true;
				sleep 4.7;
				life_siren_active = false;
			};
			_veh = vehicle player;
			if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
			if((_veh getVariable "siren")) then
			{
				titleText [localize "STR_MISC_SirensOFF","PLAIN"];
				_veh setVariable["siren",false,true];
			}
				else
			{
				titleText [localize "STR_MISC_SirensON","PLAIN"];
				_veh setVariable["siren",true,true];
				if(playerSide == west) then {
					[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
				} else {
					//I do not have a custom sound for this and I really don't want to go digging for one, when you have a sound uncomment this and change medicSiren.sqf in the medical folder.
					//[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
				};
			};
		};
	};
*/	
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = _cursorT;
			} else {
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						systemChat localize "STR_MISC_VehUnlock";
						[[player,"CarUnlocked"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};	
						systemChat localize "STR_MISC_VehLock";
						[[player,"CarLocked"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
					};
				};
			};
		};
	};
	
	case 79:
	{
		if(_shift) then {_handled = true;};
		if (_shift && !(player getVariable "restrained")) then
		{
			player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
		};
	};

	case 80:
	{
		if(_shift) then {_handled = true;};
		if (_shift && !(player getVariable "restrained")) then
		{
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
		};
	};

	case 81:
	{
		if(_shift) then {_handled = true;};
		if (_shift && !(player getVariable "restrained")) then
		{
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";
		};
	};

	case 75:
	{
		if(_shift) then {_handled = true;};
		if (_shift && !(player getVariable "restrained")) then
		{
			player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
		};
	};
	
	case 62:
	{
		if (_alt) then
		{
			diag_log format ["SERVER INFO: %1 verwendet ALT+F4 (Bitte Melde es einem Admin)",_player getVariable["realname",name _player]];
			[[1,format["SERVER INFO: %1 verwendet ALT+F4 (Bitte Melde es einem Admin)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			if(!alive player) then {
				[[1,format["SERVER INFO: %1 verwendet ALT+F4 während er tot ist - !GEAR.SAFE!(Bitte Melde es einem Admin)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			};
			[] call SOCK_fnc_updateRequest;
		};
	};
	
	case 15:	// ALT + TAB
	{
		if (_alt) then
		{
			[] call SOCK_fnc_updateRequest;
		};
	};
	
	case 211:
	{
		if (_alt && _ctrlKey) then
		{
			diag_log format ["SERVER INFO: %1 verwendet CTRL + ALT + DEL (Bitte Melde es einem Admin)",_player getVariable["realname",name _player]];
			[[1,format["SERVER INFO: %1 verwendet CTRL + ALT + DEL (Bitte Melde es einem Admin)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			[] call SOCK_fnc_updateRequest;
		};
	};
	
	case 1:
    {
		if( _ctrlKey )  then {
		diag_log format ["SERVER INFO: %1 verwendet CTRL + ESC (Bitte Melde es einem Admin)",_player getVariable["realname",name _player]];
		[[1,format["SERVER INFO: %1 verwendet CTRL + ESC (Bitte Melde es einem Admin)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[] call SOCK_fnc_updateRequest;
		};
	};
};

_handled;
