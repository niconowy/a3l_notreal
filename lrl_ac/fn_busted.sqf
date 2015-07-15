#include <macro.h>;
/*

	Author: James Sunderland
	File: fn_busted.sqf
	
	Description:
	Lel, 5(r1pTk166Y busted... hang over urself... however, get a life!

*/

_a = _this select 0;
_b = _this select 1;
_c = stecher;
_d = faecher;
_e = brecher;

disableUserInput true;
showCommandingMenu "";
showMap false;
[[0,format["=== !!!! HACKER !!!!!  -  %1  -    ADMIN BENACHRICHTIGEN!!! ===",_e]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
[[2,format["=== !!!! HACKER !!!!!  -  %1  -    ADMIN BENACHRICHTIGEN!!! ===",_e]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
switch (_a) do {
	case 0: {
		[[4,format
		["
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'> %1</t><br/><br/>
		<t size='1.6' font='PuristaBold'>User-ID:</t><br/><t size='1.4'> %2<br/><br/>
		<t size='1.6' font='PuristaBold'>Flagged:</t><br/><t size='1.4'>OpenAdminMenu<br/><br/><br/>
		<t size='1.2'>KONTAKTIERE UMGEHEND EINEN ADMIN</t>
		",_e,_c,_d]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	};

	case 1: {
		[[4,format
		["
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'> %1</t><br/><br/>
		<t size='1.6' font='PuristaBold'>User-ID:</t><br/><t size='1.4'> %2<br/><br/>
		<t size='1.6' font='PuristaBold'>Flagged:</t><br/><t size='1.4'>AddMoney<br/><br/><br/>
		<t size='1.2'>KONTAKTIERE UMGEHEND EINEN ADMIN</t>
		",_e,_c,_d]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	};

	case 2: {
		[[4,format
		["
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'> %1</t><br/><br/>
		<t size='1.6' font='PuristaBold'>User-ID:</t><br/><t size='1.4'> %2<br/><br/>
		<t size='1.6' font='PuristaBold'>Flagged:</t><br/><t size='1.4'>OpenDebugConsole<br/><br/><br/>
		<t size='1.2'>KONTAKTIERE UMGEHEND EINEN ADMIN</t>
		",_e,_c,_d]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	};

	case 3: {
		[[4,format
		["
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'> %1</t><br/><br/>
		<t size='1.6' font='PuristaBold'>User-ID:</t><br/><t size='1.4'> %2<br/><br/>
		<t size='1.6' font='PuristaBold'>Flagged:</t><br/><t size='1.4'>ModifyUserInputBool<br/><br/><br/>
		<t size='1.2'>KONTAKTIERE UMGEHEND EINEN ADMIN</t>
		",_e,_c,_d]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	};

	case 4: {
		[[4,format
		["
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'> %1</t><br/><br/>
		<t size='1.6' font='PuristaBold'>User-ID:</t><br/><t size='1.4'> %2<br/><br/>
		<t size='1.6' font='PuristaBold'>Flagged:</t><br/><t size='1.4'>ModifyAllowDamageBool<br/><br/><br/>
		<t size='1.2'>KONTAKTIERE UMGEHEND EINEN ADMIN</t>
		",_e,_c,_d]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	};

	case 5: {
		[[4,format
		["
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'> %1</t><br/><br/>
		<t size='1.6' font='PuristaBold'>User-ID:</t><br/><t size='1.4'> %2<br/><br/>
		<t size='1.6' font='PuristaBold'>Flagged:</t><br/><t size='1.4'>SetMapMarker<br/><br/><br/>
		<t size='1.2'>KONTAKTIERE UMGEHEND EINEN ADMIN</t>
		",_e,_c,_d]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	};

	case 6: {
		[[4,format
		["
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'> %1</t><br/><br/>
		<t size='1.6' font='PuristaBold'>User-ID:</t><br/><t size='1.4'> %2<br/><br/>
		<t size='1.6' font='PuristaBold'>Flagged:</t><br/><t size='1.4'>SwitchCameraState<br/><br/><br/>
		<t size='1.2'>KONTAKTIERE UMGEHEND EINEN ADMIN</t>
		",_e,_c,_d]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	};	
	
	case 7: {
		[[4,format
		["
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'> %1</t><br/><br/>
		<t size='1.6' font='PuristaBold'>User-ID:</t><br/><t size='1.4'> %2<br/><br/>
		<t size='1.6' font='PuristaBold'>Flagged:</t><br/><t size='1.4'>SetPlayerPos<br/><br/><br/>
		<t size='1.2'>KONTAKTIERE UMGEHEND EINEN ADMIN</t>
		",_e,_c,_d]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	};
	
	default {
		[[4,format
		["
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'> %1</t><br/><br/>
		<t size='1.6' font='PuristaBold'>User-ID:</t><br/><t size='1.4'> %2<br/><br/>
		<t size='1.6' font='PuristaBold'>Flagged:</t><br/><t size='1.4'>UnknownRestriction<br/><br/><br/>
		<t size='1.2'>KONTAKTIERE UMGEHEND EINEN ADMIN</t>
		",_e,_c,_d]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	};
};

//preprocessFile "lrl_ac\3nd3.sqf";
["A3LCheat",false,true] call BIS_fnc_endMission;
