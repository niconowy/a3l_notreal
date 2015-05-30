/*
	File: fn_ULights.sqf
	Author: mindstorm, modified by Adanteh
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	macht das undercover blaulicht für die geheimdienstler.
*/
if(isServer)exitWith{};
Private ["_bright","_vehicle","_lightRed","_lightBlue","_lightleft","_leftRed","_xcar"];
_vehicle = _this select 0;	
_xcar = _vehicle getVariable "xcar";	
	
if(isNil "_vehicle" OR isNull _vehicle OR (isNil{_xcar})) exitWith {};

_lightBlue = [0.9,0.9,10];
//_lightBlue = [0.1, 0.1, 20];

_lightleft = "#lightpoint" createVehicle getpos _vehicle;   
_lightleft setLightColor _lightBlue; 
//_lightleft setLightBrightness 0.2;  
//_lightleft setLightAmbient [0.1,0.1,1];
_lightleft setLightBrightness 1;  
_lightleft setLightAmbient [0.9,0.9,10];

switch (typeOf _vehicle) do{
	case "A3L_CVBlack":{
		_lightleft lightAttachObject [_vehicle, [-0.45, -0.1, 0.17]];
	};	
	case "A3L_CVGrey":{
		_lightleft lightAttachObject [_vehicle, [-0.45, -0.1, 0.17]];
	};
	case "A3L_CVWhite":{
		_lightleft lightAttachObject [_vehicle, [-0.45, -0.1, 0.17]];
	};
	case "cl3_e63_amg_black":{
		_lightleft lightAttachObject [_vehicle, [-0.48, -0.82, 0.04]];
	};
	case "cl3_e63_amg_white":{
		_lightleft lightAttachObject [_vehicle, [-0.48, -0.82, 0.04]];
	};
	case "cl3_e63_amg_lime":{
		_lightleft lightAttachObject [_vehicle, [-0.48, -0.82, 0.04]];
	};
	case "cl3_e63_amg_light_yellow":{
		_lightleft lightAttachObject [_vehicle, [-0.48, -0.82, 0.04]];
	};
	case "cl3_e60_m5_black":{
		_lightleft lightAttachObject [_vehicle, [-0.48, -0.82, 0.16]];
	};
	case "cl3_e60_m5_white":{
		_lightleft lightAttachObject [_vehicle, [-0.48, -0.82, 0.16]];
	};
	case "cl3_e60_m5_lime":{
		_lightleft lightAttachObject [_vehicle, [-0.48, -0.82, 0.16]];
	};
	case "cl3_e60_m5_light_yellow":{
		_lightleft lightAttachObject [_vehicle, [-0.48, -0.82, 0.16]];
	};
		/*
	case "DAR_TahoePolice":{
		_lightleft lightAttachObject [_vehicle, [-0.6, -0.2, 0.4]];
	};
	case "cl3_e60_m5_black":{
		_lightleft lightAttachObject [_vehicle, [0.0, 0.0, 0.30]];
	}; 
	case "cl3_lada":{
		_lightleft lightAttachObject [_vehicle, [-0.6, -0.2, 0.4]];
	}; 
	case "C_Hatchback_01_sport_F":{
		_lightleft lightAttachObject [_vehicle, [-0.6, -0.2, 0.4]];
	}; 	*/
};

_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.78;
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;
_lightleft setLightDayLight true;

_lightleft setLightAttenuation [0.05, 0, 0, 500];

_leftRed = true;  
while{ (alive _vehicle)} do {  
	_xcar = _vehicle getVariable "xcar";	
	if((isNil{_xcar}) OR !(_xcar select 1))exitWith {};
	_bright = 10 * sunOrMoon^4 + 2,5; // HAHA  Math.... Never thought i could use ýou  	
	if(_leftRed) then{  
		_leftRed = false;
		_lightleft setLightBrightness _bright;  
	}else {  
		_leftRed = true;  
		_lightleft setLightBrightness 0.0;  		
	};  
	sleep (_this select 1);  
};  
deleteVehicle _lightleft;
