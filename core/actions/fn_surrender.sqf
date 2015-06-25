/*
	Author: MrKraken
	filename: fn_surrender.sqf
	Description: places player into a surrendered state!
*/

player setVariable ["surrender", true, true]; //Set surrender to true

while { player getVariable ["surrender", false] }  do { 
	[[player,"CL3_anim_surrenderLoop"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
	
	// Check if player is alive.
	if (!alive player) then {
		player setVariable ["surrender", false, true];
	};
};

[[player,"CL3_anim_surrenderfinish"],"life_fnc_animSync",nil,false] spawn life_fnc_MP; //Animation out