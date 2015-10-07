/*
	File: fn_commandSpam.sqf
	Author: Variatox Sandrox
	Server: lakeside-reallife.de
	
	Description:
	Prüft nach, wie oft eine bestimmte Aktion ausgeführt wurde und
	bestraft den entsprechenden Spieler (=CALLER) dafür.
*/

if(lrl_spamcounter >= 10) exitWith {
	[1,[format["%1 wurde vom Server geworfen, da er zu sehr spammte.",name player],"life_fnc_broadcast",true,false]] spawn life_fnc_MP;
	disableUserInput true;
	["A3LCheatSpam",true,false] call BIS_fnc_endMission;
	sleep 35;
	disableUserInput false;
};

if(lrl_spamcounter >= 5) then {
	hint parseText format ["<t size='2' color='#ff0000'>Warnung</t><br/><br/><t size='1.1' align='center'>= Du scheinst einige Features zu schnell/zu oft auszuführen! =</t><br/><br/><br/><t size='1.2'>Level:</t><t size='1.15'> %1/10</t><br/>",lrl_spamcounter];
};

lrl_spamcounter = lrl_spamcounter + 1;

while {lrl_spamcounter > 0} do {
	lrl_spamcounter = lrl_spamcounter - 1;
	sleep 3;
};