/*

    File: fn_initZeus.sqf

    Author: John "Paratus" VanderZwet

    

    Description:

    Zeus Initialization file.

*/

player addRating 9999999;

waitUntil {!(isNull (findDisplay 46))};

[] spawn life_fnc_copMarkers;

if(life_adminlevel < 1) exitWith

{
	disableUserInput true;
	[[1,format["<br/><br/><t size='2.1' align='center' color='#ff0000' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/><br/><br/>
	<t size='0.9' font='TahomaB'>PlayerInSideLogic</t><br/><br/><br/><br/>
	<t size='1.2'>Der Spieler </t><t size='1.2' color='#089494'>
	<br/>%1<br/>
	</t><t size='1'>[ID: %2]</t><br/>
	<t size='1.2'> versuchte eine Funktion zu der er gar keinen Zugriff besitzt, auszuführen.
	<br/><br/><br/><t font='TahomaB' size='1.5'>Bitte dem Support melden!</t></t><br/><br/><br/><br/><br/>"
	,name player, getPlayerUID player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	sleep 6;
	["A3LCheat",false,true] call BIS_fnc_endMission;
};