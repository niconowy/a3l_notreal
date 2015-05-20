#include <macro.h>
/*
	Master client initialization file
*/


if (!isNil "A3L_RunCode") exitwith {
	player setvariable ["lolusuck",true,true];
};

A3L_RunCode = compileFinal "
	private ""_code"";
	_code = _this select 0;
	_code = compile _code;
	[] call _code;
";

// Run Some Client Stuff
[] execVM "A3L_Stuff\jailsystem.sqf";
[] execVM "A3L_Stuff\bank.sqf";
//[] execVM "A3L_Stuff\halloween.sqf";


// Needs to be removed after halloween
//candy = 0;
//scarylevel = 0;

// A3L CURRENT VERSION
A3L_ClientVersion = getNumber (configFile >> "CfgPatches" >> "A3L_Client2" >> "requiredVersion");

life_firstSpawn = true;
life_session_completed = false;
private["_handle","_timeStamp"];
// 0 cutText["Setting up client, please wait...","BLACK FADED"];
// 0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting ArmA 3 Life Client Init ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
//Setup initial client core functions
diag_log "::Life Client:: Initialization Variables";
[] call compile PreprocessFileLineNumbers "core\configuration.sqf";
diag_log "::Life Client:: Variables initialized";
diag_log "::Life Client:: Setting up Eventhandlers";
[] call life_fnc_setupEVH;
diag_log "::Life Client:: Eventhandlers completed";
diag_log "::Life Client:: Setting up user actions";
[] call life_fnc_setupActions;
diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil {TON_fnc_clientGangLeader})};



A3L_Fnc_Request = player;
PublicvariableServer "A3L_Fnc_Request";
waitUntil {(!isNil {A3L_fnc_dreDeta8})};


_TFenabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;

if (isNil "TFAR_fnc_isTeamSpeakPluginEnabled") exitwith {
	999999 cutText ["Task Force Radio is not running on your computer. Please re-sync and retry","BLACK FADED"];
	999999 cutFadeOut 99999999;
};

if (!(_TFenabled)) then {
	while {!([] call TFAR_fnc_isTeamSpeakPluginEnabled)} do {
		titleText ["Please enable Task Force Radio in your TS3 Plugins! || TS3 -> Settings -> Plugins", "BLACK"];
		sleep 2;
	};
};

A3L_TFEnabled = true;
A3L_onTsServer = "[GER] Lakeside Reallife - Lebe deinen Traum" == (call TFAR_fnc_getTeamSpeakServerName);
A3L_onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
titleText ["Task Force Radio erfolgreich geladen!","BLACK IN"];

[] spawn {

	while {true} do {
	
				_isadmin = false;
				if (!(isNil "life_adminlevel")) then {
					_adminlvl = life_adminlevel call BIS_fnc_parseNumber;
					
					if (_adminlvl > 0) then {
						_isadmin = true;
					};
				};
				
				if (!(_isadmin)) then {
					_TFenabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;
					if ((!(_TFenabled)) && (A3L_TFEnabled)) then {
						titleText ["Bitte Aktiviere das Teamspeak 3 TFAR Plugin! || TS3 -> Settings -> Plugins", "BLACK"];
						A3L_TFEnabled = false;
					};
					
					_onTsServer = "[GER] Lakeside Reallife - Lebe deinen Traum" == (call TFAR_fnc_getTeamSpeakServerName);
					if (!(_onTsServer)) then {
						titleText ["Bitte tritt unserem Teamspeak 3 Server bei!", "BLACK"];
						A3L_onTsServer = false;
					} else {
						if (!(A3L_onTsServer)) then {
							titleText ["TS server check completed. Welcome!","BLACK IN"];
							A3L_onTsServer = true;
						};
					};
					
					_onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
					if (!(_onChannel)) then {
						titleText ["Bitte lade das TFAR Plugin neu! || Settings -> Plugins -> Reload All", "BLACK"];
						A3L_onChannel = false;
					} else {
						if (!(A3L_onChannel)) then {
							titleText ["TS channel check completed. Welcome!","BLACK IN"];
							A3L_onChannel = true;
						};
					};
					
					if ((_TFenabled) && (!(A3L_TFEnabled))) then {
						titleText ["Plugin aktiviert, Willkommen!","BLACK IN"];
						A3L_TFEnabled = true;
					};
				};
				
				sleep 2;	
			};
};


[] spawn {
if (!isServer) then {

	_admin = false;
	while {true} do 
		{
		_admin = false;
		if (!(isNil "life_adminlevel")) then 
		{
			_admin = life_adminlevel call BIS_fnc_parseNumber;
			if (_admin > 0) then 
			{
				_admin = true;
			};
		};
		
		if (_admin) exitwith {};
		
		if (cameraOn == player && cameraView == "External") then
			{
				player switchCamera "Internal";
			};
		sleep 0.1;
		};
	};
};

diag_log "::Life Client:: Received server functions.";

diag_log "::Life Client:: Executed custom client functions";
0 cutText ["Waiting for the server to be ready...","BLACK FADED"];
0 cutFadeOut 99999999;
diag_log "::Life Client:: Waiting for the server to be ready..";
waitUntil{!isNil "life_server_isReady"};
waitUntil{(life_server_isReady OR !isNil "life_server_extDB_notLoaded")};
if(!isNil "life_server_extDB_notLoaded") exitWith {
	diag_log "::Life Client:: Server did not load extDB";
	999999 cutText ["The server-side extension extDB was not loaded into the engine, report this to the server admin.","BLACK FADED"];
	999999 cutFadeOut 99999999;
};
[] call SOCK_fnc_dataQuery;
waitUntil {life_session_completed};
0 cutText["Finishing client setup procedure","BLACK FADED"];
0 cutFadeOut 9999999;

//diag_log "::Life Client:: Group Base Execution";
[] spawn life_fnc_escInterupt;

switch (playerSide) do
{
	case west:
	{
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};
	
	case civilian:
	{
		//Initialize Civilian Settings
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};
	
	case independent:
	{
		//Initialize Medics and blah
		_handle = [] spawn life_fnc_initMedic;
		waitUntil {scriptDone _handle};
	};
	
	case east:
	{
		//Initialize ADAC and blah
		_handle = [] spawn life_fnc_initAdac;
		waitUntil {scriptDone _handle};
	};
	
	case sideLogic:

    {
        _handle = [] spawn life_fnc_initZeus;
        waitUntil {scriptDone _handle};
    };
};

player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
diag_log "Past Settings Init";
[] execFSM "core\fsm\client.fsm";
diag_log "Executing client.fsm";
waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
player addRating 99999999;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log format["                End of Altis Life Client Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "------------------------------------------------------------------------------------------------------";
[[getPlayerUID player,player getVariable["realname",name player]],"life_fnc_wantedProfUpdate",false,false] spawn life_fnc_MP;
life_sidechat = true;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
0 cutText ["","BLACK IN"];
[] call life_fnc_hudSetup;
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
[] call life_fnc_settingsInit;
player setVariable["steam64ID",getPlayerUID player];
player setVariable["realname",profileName,true];
life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

life_fnc_garageRefund = compileFinal
"
	_price = _this select 0;
	_unit = _this select 1;
	if(_unit != player) exitWith {};
	ja_pare = ja_pare + _price;
";

[] execVM "core\init_survival.sqf";

_handle = [] spawn compile PreprocessFileLineNumbers "extra\configuration.sqf";
waitUntil {scriptDone _handle};
_handle = [] spawn compile PreprocessFileLineNumbers "extra\functions.sqf";
waitUntil {scriptDone _handle};

__CONST__(life_paycheck,life_paycheck); //Make the paycheck static.
player enableFatigue (__GETC__(life_enableFatigue));