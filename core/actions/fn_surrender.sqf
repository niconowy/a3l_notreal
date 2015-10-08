/*
	Author: MrKraken
	filename: fn_surrender.sqf
	Description: places player into a surrendered state!
*/

player setVariable ["surrender", true, true]; //Set surrender to true

while { player getVariable ["surrender", false] }  do { 
	player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //Animation in
	
	// Check if player is alive.
	if (!alive player) then {
		player setVariable ["surrender", false, true];
	};
	
	if (life_istazed && life_knockout && lrl_knockedOut) then {
		player setVariable ["surrender", false, true];
	};
	
	if (player getVariable "restrained") then {
		player setVariable ["surrender", false, true];
	};
};


player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon"; //Animation out