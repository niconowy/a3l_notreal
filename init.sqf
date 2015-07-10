// TFR Variables API
tf_no_auto_long_range_radio = true; 
tf_west_radio_code = "_alliance";
tf_east_radio_code = "_opfor";
tf_guer_radio_code = "_alliance";
tf_civ_radio_code = "_opfor";

// Server SetVariables
if (isServer) then {
	bank setvariable ["robbed",false,true];
	stash1 setvariable ["robbed",false,true];
	stash2 setvariable ["robbed",false,true];
	stash3 setvariable ["robbed",false,true];
	stash4 setvariable ["robbed",false,true];
};


// Different depending on server
tf_radio_channel_name = "TaskForceRadio";

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Lakeside Reallife v2.2.0.1";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "extra\weather.sqf";

WEST setFriend [INDEPENDENT,1];
WEST setFriend [EAST,1];
EAST setFriend [WEST,1];
EAST setFriend [INDEPENDENT,1];
INDEPENDENT setFriend [EAST,1];
INDEPENDENT setFriend [WEST,1];

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};