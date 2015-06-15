#include <macro.h>
/*
	
	file: fn_newMsg.sqf
	Author: Silex
	
*/

private["_to","_type","_playerData","_msg"];
disableSerialization;

_type = [_this,0,-1] call BIS_fnc_param;
_playerData = [_this,1,-1] call BIS_fnc_param;
_msg = [_this,2,"",[""]] call BIS_fnc_param;

_display = findDisplay 88888;
_cPlayerList = _display displayCtrl 88881;
_cMessageEdit = _display displayCtrl 88884;

switch(_type) do
{
	case 0:
	{
		life_smartphoneTarget = call compile format["%1",_playerData];
		ctrlSetText[88886, format["Nachricht an: %1",name life_smartphoneTarget]];
		if((__GETC__(life_adminlevel) < 1)) then
		{
			ctrlShow[888897,false];
		};
	};
	//normal message
	case 1:
	{
		if(isNUll life_smartphoneTarget) exitWith {hint format["Keine Person ausgwählt!"];};
		ctrlShow[88885, false];
		if(_msg == "") exitWith {hint localize "STR_SMARTPHONE_MissingMessage";ctrlShow[88885, true];};
		[[life_smartphoneTarget,_msg,player,0],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Du hast eine Nachricht an %1 gesendet: %2",name life_smartphoneTarget,_msg];	
		ctrlShow[88885, true];
		closeDialog 88883;
	};
	//copmessage
	case 2:
	{
		if(({side _x == west} count playableUnits) == 0) exitWith {hint format["Die Polizei ist derzeit nicht zu erreichen. Bitte versuchen Sie es später nochmal."];};
		ctrlShow[888895,false];
		if(_msg == "") exitWith {hint localize "STR_SMARTPHONE_MissingMessage";ctrlShow[888895,true];};
		[[ObjNull,_msg,player,1],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		_to = "Polizei";
		hint format["Du hast der %1 folgenden Notruf gesendet: %2",_to,_msg];
		ctrlShow[888895,true];
		closeDialog 887890;
	};
	//msgadmin
	case 3:
	{
		ctrlShow[888896,false];
		if(_msg == "") exitWith {hint localize "STR_SMARTPHONE_MissingMessage";ctrlShow[888896,true];};
		[[ObjNull,_msg,player,2],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		_to = "Admins";
		hint format["Du hast den %1 folgende Nachricht gesendet: %2",_to,_msg];
		ctrlShow[888896,true];
		closeDialog 887890;
	};
	//emsrequest
	case 4:
	{
		if(({side _x == independent} count playableUnits) == 0) exitWith {hint format["Zurzeit ist kein Arzt im Dienst. Bitte probiere es später nochmal."];};
		ctrlShow[888899,false];
		if(_msg == "") exitWith {hint localize "STR_SMARTPHONE_MissingMessage";ctrlShow[888899,true];};
		[[ObjNull,_msg,player,3],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Der EM-Service wurde benachrichtigt mit: %1",_msg];
		ctrlShow[888899,true];
		closeDialog 887890;
	};
	//adminToPerson
	case 5:
	{
		if((call life_adminlevel) < 1) exitWith {[] call AC_fnc_checkThatShit;};
		if(isNULL life_smartphoneTarget) exitWith {hint format["Keine Person ausgwählt!"];};
		if(_msg == "") exitWith {hint localize "STR_SMARTPHONE_MissingMessage";};
		[[life_smartphoneTarget,_msg,player,4],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Admin-Nachricht gesendet zu: %1 - Message: %2",name life_smartphoneTarget,_msg];
		closeDialog 88883;
	};
	//emergencyloading
	case 6:
	{
		if((__GETC__(life_adminlevel) < 1)) then
		{
			ctrlShow[888898,false];
			ctrlShow[888896,true];
		} else {
			ctrlShow[888898,true];
			ctrlShow[888896,false];
		};
		
	//Cop-Rundfunk Button
		if(playerSide != west) then {
			ctrlShow[888828,false];
		} else {
			ctrlShow[888828,true];
		};
	};
	//adminMsgAll
	case 7:
	{
		if((call life_adminlevel) < 1) exitWith {[] call AC_fnc_checkThatShit;};
		if(_msg == "") exitWith {hint localize "STR_SMARTPHONE_MissingMessage";};
		[[ObjNull,_msg,player,5],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Admin-Rundruf An Alle: %1",_msg];
		closeDialog 887890;
	};
	//ADAC
	case 8:
	{
		if(({side _x == east} count playableUnits) == 0) exitWith {hint format["Zurzeit ist kein ADAC im Dienst. Bitte probiere es später nochmal."];};
		ctrlShow[888899,false];
		if(_msg == "") exitWith {hint localize "STR_SMARTPHONE_MissingMessage";ctrlShow[888899,true];};
		[[ObjNull,_msg,player,6],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Der IPD wurde benachrichtigt mit: %1",_msg];
		ctrlShow[888899,true];
		closeDialog 887890;
	};
	
	//cop rundfunk
	case 9: {
		if(playerSide in [independent, east, civilian]) exitWith {hint "Du bist kein Polizist!"};
		if(__GETC__(life_coplevel) < 8) exitWith {hint "Du musst mindestens den Rang Sergeant erreicht haben!"};
		if(_msg == "") exitWith {hint localize "STR_SMARTPHONE_MissingMessage";};
		[[ObjNull,_msg,player,7],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Rundmail: %1",_msg];
		closeDialog 888828;
	};
};