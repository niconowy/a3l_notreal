/*
	File: fn_commandSpam.sqf
	Author: Variatox Sandrox
	Server: lakeside-reallife.de
	
	Description:
	Prüft nach, wie oft eine bestimmte Aktion ausgeführt wurde und
	bestraft den entsprechenden Spieler (=CALLER) dafür.
*/

lrl_spamcounter = lrl_spamcounter + 1;

if(lrl_spamcounter >= 10) exitWith {
	[[0,format["LRL-ANTICHEAT> %1 wurde vom Server geworfen, da er zu frequent Funktionen/Aktionen ausführte.",name player]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	disableUserInput true;
	["A3LCheatSpam",true,false] call BIS_fnc_endMission;
	sleep 35;
	disableUserInput false;
};

if(lrl_spamcounter >= 5) then {
	hint parseText format ["<t size='2' color='#ff0000'>Warnung</t><br/><br/><t size='1.1' align='center'>= Du scheinst einige Features zu schnell/zu oft auszuführen! =</t><br/><br/><br/><t size='1.2'>Warn-Level:</t><br/><t size='1.15'> %1/10</t><br/>",lrl_spamcounter];
};

[] spawn {
	while {(lrl_spamcounter > 0)} do {
		sleep 5;
		lrl_spamcounter = lrl_spamcounter - 1;
	}
};