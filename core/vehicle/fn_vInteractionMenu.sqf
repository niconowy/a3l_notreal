/*
	File: fn_vInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various vehicle actions
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Title 37401
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8"];

if(!dialog) then {
	createDialog "vInteraction_Menu";
};
disableSerialization;

_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air") OR (_curTarget isKindOf "Motorcycle") OR (_curTarget isKindOf "A3L_Tahoe_Base")) then {true} else {false};
if(!_isVehicle) exitWith {closeDialog 0;};
_display = findDisplay 37400;

_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;

life_vInact_curTarget = _curTarget;

//Set Repair Action
_Btn1 ctrlSetText localize "STR_vInAct_Repair";
_Btn1 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_repairTruck;";

if("ToolKit" in (items player) && (damage _curTarget < 1)) then {_Btn1 ctrlEnable true;} else {_Btn1 ctrlEnable false;};

_Btn7 ctrlSetText localize "STR_vInAct_Einschlagen";
_Btn7 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_scheibeEinschlagen;";

_Btn7 ctrlEnable false;

{
	_str = [_x] call life_fnc_varToStr; _val = missionNameSpace getVariable _x;
	if(_val > 0 ) then {if( _str == "nothammer" || _str == "Nothammer" ) then {_Btn7 ctrlEnable true;};};
} foreach life_inv_items;


/*
	Z I V I L I S T E N
*/

if(playerSide == civilian) then {

	_Btn4 ctrlSetText localize "STR_vInAct_PullOut";
	_Btn4 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_pulloutAction;";
	if(count crew _curTarget == 0) then {_Btn4 ctrlEnable false;};
	
	if({side _x == east} count playableUnits > 2) then
	{
		if(!life_adac_request) then
		{
			_Btn5 ctrlSetText "LAC Rufen";
			_Btn5 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_requestADAC;";
			//_Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestADAC;"; orginal
		} else {
			_Btn2 ctrlSetText "LAC Widerrufen";
			_Btn2 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_requestNotADAC;"; // von deleteADAC in requestNotADAC geändert
			//_Btn5 buttonSetAction "[[cursorTarget],""life_fnc_deleteADAC"",civilian,FALSE] spawn life_fnc_MP; closeDialog 0;";
			//_Btn2 buttonSetAction "[[cursorTarget],""life_fnc_requestNotADAC"",civilian,FALSE] spawn life_fnc_MP; closeDialog 0;";
			
		};/*
		_Btn5 ctrlSetText "ADAC Rufen";
		_Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestADAC; closeDialog 0;";
		
		_Btn2 ctrlSetText "ADAC Widerrufen";
		_Btn2 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestNotADAC; closeDialog 0;";*/
	};
	_Btn8 ctrlSetText localize "STR_vInAct_Aufbrechen";
	_Btn8 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_lockpick;";
	{
	_str = [_x] call life_fnc_varToStr; _val = missionNameSpace getVariable _x;
	if(_val > 0 ) then {if( _str == "lockpick" || _str == "lockpick" ) then {_Btn8 ctrlEnable true;};};
	} foreach life_inv_items;	
	
	/*neu test
	if(!life_adac_request) then
	{
		_Btn3 ctrlSetText "ADAC Rufen";
		_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestADAC; closeDialog 0;";
	} else {
		_Btn3 ctrlSetText "ADAC Widerrufen";
		_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_deleteADAC; closeDialog 0;";
	};*/
};



/*
	P O L I Z I S T E N
*/

if(playerSide == west) then {
	_Btn2 ctrlSetText localize "STR_vInAct_Registration";
	_Btn2 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_searchVehAction;";
	
	_Btn3 ctrlSetText localize "STR_vInAct_SearchVehicle";
	_Btn3 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_vehInvSearch;";
	
	_Btn4 ctrlSetText localize "STR_vInAct_PullOut";
	_Btn4 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_pulloutAction;";
	if(count crew _curTarget == 0) then {_Btn4 ctrlEnable false;};

	
	if({side _x == east} count playableUnits > 0) then
	{
		if(!life_adac_request) then
		{
			_Btn5 ctrlSetText "LAC Rufen";
			_Btn5 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_requestADAC;";
		} else {
			_Btn5 ctrlSetText "LAC Widerrufen";
			_Btn5 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_deleteADAC;";
		};
		
	} else {
		_Btn5 ctrlSetText localize "STR_vInAct_Impound";
		_Btn5 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_impoundAction;";
	};
	
	if(_curTarget isKindOf "Ship") then {
		_Btn6 ctrlSetText localize "STR_vInAct_PushBoat";
		_Btn6 buttonSetAction "closeDialog 0; [] spawn life_fnc_pushObject;";
		if(_curTarget isKindOf "Ship" && {local _curTarget} && {count crew _curTarget == 0}) then { _Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
	} else {
		if(typeOf (_curTarget) in ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F","B_Heli_Transport_03_F","B_Heli_Transport_03_unarmed_F","O_Heli_Transport_04_F","O_Heli_Transport_04_ammo_F","O_Heli_Transport_04_bench_F","O_Heli_Transport_04_box_F","O_Heli_Transport_04_covered_F","O_Heli_Transport_04_fuel_F","O_Heli_Transport_04_medevac_F","O_Heli_Transport_04_repair_F"]) then {
			_Btn6 ctrlSetText localize "STR_vInAct_GetInKart";
			_Btn6 buttonSetAction "closeDialog 0; player moveInDriver life_vInact_curTarget;";
			if(count crew _curTarget == 0 && {canMove _curTarget} && {locked _curTarget == 0}) then {_Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
		} else {
			_Btn6 ctrlSetText localize "STR_vInAct_Unflip";
			_Btn6 buttonSetAction "closeDialog 0; life_vInact_curTarget setPos [(getPos life_vInact_curTarget select 0)+0.025, (getPos life_vInact_curTarget select 1), (getPos life_vInact_curTarget select 2)+0.5];";
		};
	};
	
} else {
	
	if(_curTarget isKindOf "Ship") then {
		_Btn2 ctrlSetText localize "STR_vInAct_PushBoat";
		_Btn2 buttonSetAction "closeDialog 0; [] spawn life_fnc_pushObject;";
		if(_curTarget isKindOf "Ship" && {local _curTarget} && {count crew _curTarget == 0}) then { _Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false};
	} else {
		if(typeOf (_curTarget) in ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F"]) then {
			_Btn2 ctrlSetText localize "STR_vInAct_GetInKart";
			_Btn2 buttonSetAction "closeDialog 0; player moveInDriver life_vInact_curTarget;";
			if(count crew _curTarget == 0 && {canMove _curTarget} && {locked _curTarget == 0}) then {_Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false};
		} else {
			_Btn2 ctrlSetText localize "STR_vInAct_Unflip";
			_Btn2 buttonSetAction "closeDialog 0; life_vInact_curTarget setPos [(getPos life_vInact_curTarget select 0)+0.025, (getPos life_vInact_curTarget select 1), (getPos life_vInact_curTarget select 2)+0.5];";
		};
	};
	
	if(!life_adac_request) then
	{
		_Btn3 ctrlSetText "LAC Rufen";
		_Btn3 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_requestADAC;";
	} else {
		_Btn3 ctrlSetText "LAC Widerrufen";
		_Btn3 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_deleteADAC;";
	};
	
	_Btn4 ctrlSetText localize "STR_vInAct_PullOut";
	_Btn4 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_pulloutAction;";
	if(count crew _curTarget == 0) then {_Btn4 ctrlEnable false;};
	
	_Btn5 ctrlShow false;
	_Btn6 ctrlShow false;
	_Btn8 ctrlEnable false;
	_Btn8 ctrlShow false;
};


/*
	S A N I T Ä T E R
*/

if(playerSide == east) then {
	_Btn2 ctrlSetText localize "STR_vInAct_Impound";
	_Btn2 buttonSetAction "closeDialog 0; [life_vInact_curTarget] spawn life_fnc_impoundAction;";	
	
	if(_curTarget isKindOf "Ship") then {
		_Btn6 ctrlSetText localize "STR_vInAct_PushBoat";
		_Btn6 buttonSetAction "closeDialog 0; ] spawn life_fnc_pushObject;";
		if(_curTarget isKindOf "Ship" && {local _curTarget} && {count crew _curTarget == 0}) then { _Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
	} else {
		if(typeOf (_curTarget) in ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F"]) then {
			_Btn6 ctrlSetText localize "STR_vInAct_GetInKart";
			_Btn6 buttonSetAction "closeDialog 0; player moveInDriver life_vInact_curTarget;";
			if(count crew _curTarget == 0 && {canMove _curTarget} && {locked _curTarget == 0}) then {_Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
		} else {
			_Btn6 ctrlSetText localize "STR_vInAct_Unflip";
			_Btn6 buttonSetAction "closeDialog 0; life_vInact_curTarget setPos [getPos life_vInact_curTarget select 0, getPos life_vInact_curTarget select 1, (getPos life_vInact_curTarget select 2)+0.5];";
			if(count crew _curTarget == 0 && {canMove _curTarget}) then { _Btn6 ctrlEnable false;} else {_Btn6 ctrlEnable true;};
		};
	};
};