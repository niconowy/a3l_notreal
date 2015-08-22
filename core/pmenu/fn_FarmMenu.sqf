/*
	File: fn_Farmmenu.sqf
	Author: Dome Pwny
	Website: Lakeside-Reallife.de
	
	Description:
	Opens the Player Farmmenu
*/
if(!alive player) exitWith {}; //Prevent them from opening this for exploits while dead.
//closedialog 0;
if (!life_action_inUse && playerside == civilian) then 
{
	createDialog "Life_farming_menu";
	disableSerialization;
};else {
				hint localize "STR_NOTF_Action";
			};