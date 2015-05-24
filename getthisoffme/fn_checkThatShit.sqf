/*

	Author: James Sunderland
	arma-3-life.de
	
	Description:
	Display a hint message if a function was loaded by an user without permissions e.g. admin display.
	
	Tag: AC
	
	Types: 
		0-DisplayAdminMenu
		1-OpenDebugConsole
		2-SpawnPlayerMarkers
		3-SpawnMoney
		4-SetCameraPosition
		5-DisableKeyInput
		6-DisablePlayerDamage
		7-SetPosRestriction
		8-JoinSideLogic
		9-ExecuteGlobalMessage
*/
private["_type"];

_type = _this select 0;
disableUserInput true;
/*_restrictions = 
["DisplayAdminMenu","OpenDebugConsole","SpawnPlayerMarkers","SpawnMoney","SetCameraPosition","DisableKeyInput",
"DisablePlayerDamage","SetPosRestriction","JoinSideLogic","ExecuteGlobalMessage"];
_restriction = _restrictions select _type;

_selIndex = _restriction select _type;


playSound "busted";
[[4,format[
"
<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'> %1</t><br/><br/><br/>
<t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>%1<br/><br/><br/>
",_selIndex, name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
disableUserInput true;
2 cutText ["CHEATER AN DIE WAND!!!!! WIR HABEN EUCH LÄNGST ERKANNT!!!!! JETZT WIRD AUF EUCH GEZIELT, HIER WIRD NICHT MEHR GESPIELT!!!!!","BLACK FADED"];
2 cutFadeOut 99999999;
disableUserInput true;
showCommandingMenu "";
showMap false;
disableUserInput true;
sleep 10;
["A3LCheat",true,false] call BIS_fnc_endMission;*/

playSound "busted";
[[4,format[
"
<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/>
<t size='1.5'>Führte eine Funktion aus, für die er gar keine Rechte besitzt!<br/><br/><br/>Bitte dem Support melden!<br/><br/><br/><br/>
",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

/*
playSound "busted";
switch (_type) do {
	
	case 0: {
		[[4,format[
		"
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>DisplayAdminMenu<br/><br/><br/>
		",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};
	
	case 1: {
		[[4,format[
		"
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>OpenDebugConsole<br/><br/><br/>
		",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};
	
	case 2: {
		[[4,format[
		"
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>SpawnPlayerMarkers<br/><br/><br/>
		",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};

	case 3: {
		[[4,format[
		"
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>SpawnMoney<br/><br/><br/>
		",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};
	
	case 4: {
		[[4,format[
		"
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>SetCameraPosition<br/><br/><br/>
		",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};
	
	case 5: {
		[[4,format[
		"
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>DisableKeyInput<br/><br/><br/>
		",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};
	
	case 6: {
		[[4,format[
		"
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>DisablePlayerDamage<br/><br/><br/>
		",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};
	
	case 7: {
		[[4,format[
		"
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>JoinSideLogic<br/><br/><br/>
		",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};
	
	case 8: {
		[[4,format[
		"
		<br/><br/><br/><br/><t size='2.1' color='#ff0000' align='center' font='PuristaBold'>A3L AntiCheat</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Spieler:</t><br/><t size='1.5'>%1</t><br/><br/><br/>
		<t size='1.6' font='PuristaBold'>Restriction:</t><br/><t size='1.5'>ExecuteGlobalMessage<br/><br/><br/>
		",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};
};*/
sleep 0.7;
disableUserInput true;
2 cutText ["CHEATER AN DIE WAND!!!!! WIR HABEN EUCH LÄNGST ERKANNT!!!!! JETZT WIRD AUF EUCH GEZIELT, HIER WIRD NICHT MEHR GESPIELT!!!!!","BLACK FADED"];
2 cutFadeOut 99999999;
disableUserInput true;
showCommandingMenu "";
showMap false;
disableUserInput true;
sleep 10;
["A3LCheat",true,false] call BIS_fnc_endMission;