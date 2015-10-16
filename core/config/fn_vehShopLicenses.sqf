/*
	File: fn_vehShopLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks what shop it is and sometimes the vehicle to determine whether or not they have the license.
	
	Returns:
	TRUE if they have the license or are allowed to get that specific vehicle without having that license.
	FALSE if they don't have the license or are not allowed to obtain that vehicle.
*/
private["_veh","_ret"];
_veh = _this select 0;
_ret = false;

if(_veh == "B_Quadbike_01_F") exitWith {true}; //ATV's don't need to require a license anymore.

switch (life_veh_shop select 0) do
{
	case "med_shop": {_ret = true;};
	case "mercedes": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "bmw": {_ret =  if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "porsche": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "opel": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "vw": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "lambo": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "aston": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "audi": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "ferrari": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "dezzie_car": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "kart_shop": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "med_air_hs": {_ret = license_med_air;};
	case "civ_car": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "ford_car": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "chev_car": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "dodge_car": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "exo_car": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};
	case "donator": {_ret = if(license_civ_driver OR license_civ_permdriver) then {true} else {false};};	
	case "donatorF": {_ret = license_civ_air;};
	
	case "civ_ship": {_ret = license_civ_boat;};
	case "civ_air": {_ret = license_civ_air;};
	case "cop_air": {_ret = license_cop_air;};
	case "cop_airhq": {_ret = license_cop_air;};
	case "civ_truck":	{_ret = if(license_civ_truck OR license_civ_permdriver) then {true} else {false};};
	case "reb_car": {_ret = license_civ_rebel;};
	case "cop_car": {_ret = true;};
	case "fbi_cars": {_ret = true;};
	case "adac_veh": {_ret = true;};
	case "justiz_kfz": {_ret = true;};
	case "med_ship": {_ret = true;};
	case "cop_ship": 
	{
		if(_veh == "B_Boat_Armed_01_minigun_F") then
		{
			_ret = license_cop_cg;
		}
			else
		{
			_ret = true;
		};
	};
};

_ret;