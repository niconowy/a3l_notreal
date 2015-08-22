/*
	File: fn_copShowLicense.sqf
	Author: ???
			edit by VariatoX
			
	Server: lakeside-reallife.de
	
	Description:
	Show cop license to target player
	All pictures are copyright by its creator (in this case VariatoX)

*/

private ["_target", "_message","_rank","_rankSpec","_coplevel","_mediclevel",
"_adaclevel","_id","_pkw","_lkw","_presse","_donlevel","_rankSpec","_fish"];

_target = cursorTarget;

if(isNull _target) then {};
if(!(_target isKindOf "Man")) then {};
if(!(alive _target)) then {};

if(playerSide == west) then
{
	_coplevel = call life_coplevel;
	_donlevel = call life_donator;
	
	switch (_coplevel) do
	{
		case 1: { _rank = "<img image='images\idcards\cop\1.paa' size='8'/>";};
		case 2: { _rank = "<img image='images\idcards\cop\2.paa' size='8'/>";};
		case 3: { _rank = "<img image='images\idcards\cop\3.paa' size='8'/>";};
		case 4: { _rank = "<img image='images\idcards\cop\4.paa' size='8'/>";};
		case 5: { _rank = "<img image='images\idcards\cop\5.paa' size='8'/>";};
		case 6: { _rank = "<img image='images\idcards\cop\6.paa' size='8'/>";};
		case 7: { _rank = "<img image='images\idcards\cop\7.paa' size='8'/>";};
		case 8: { _rank = "<img image='images\idcards\cop\8.paa' size='8'/>";};
		case 9: { _rank = "<img image='images\idcards\cop\9.paa' size='8'/>";};
		case 10: { _rank = "<img image='images\idcards\cop\10.paa' size='8'/>";};
		case 11: { _rank = "<img image='images\idcards\cop\11.paa' size='8'/>";};
		case 12: { _rank = "<img image='images\idcards\cop\12.paa' size='8'/>";};
	};

// Don 2,3 = State Police/SWAT
// Don 4,5 = FBI/Underkoffer
//	if((_donlevel == 2) OR (_donlevel == 3)) then {_rankSpec = "<img image='images\idcards\cop\spec\swat.paa' size='8'/>";} else {""};
	if((_donlevel == 4) OR (_donlevel == 5)) then {_rankSpec = "<img image='images\idcards\cop\spec\fbi.jpg' size='8'/>";} else {""};

	_message = format["<t size='1.25'>%1</t><br/><br/>%2<br/><br/>%3", name player, _rank, _rankSpec];
	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
};

if(playerSide == independent) then
{
	_mediclevel = call life_mediclevel;
	
	switch (_mediclevel) do
	{
		case 1: { _rank = "Praktikant";};
        case 2: { _rank = "Sanitäter";};    
        case 3: { _rank = "Rettungsassistent";};    
        case 4: { _rank = "Arzt";};
        case 5: { _rank = "Oberarzt";};
        case 6: { _rank = "Chefarzt";};
	};

	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5' color='#ff0000'>Sanitäter</t>", name player, _rank];
	
	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
};

if(playerSide == east) then
{
	_adaclevel = call life_adaclevel;
	
	switch (_adaclevel) do
	{
		case 1: { _rank = "Auszubildender";};
		case 2: { _rank = "LAC-Mechaniker";};
		case 3: { _rank = "LAC-Mechatroniker";};	
		case 4: { _rank = "LAC-Meister";};
		case 5: { _rank = "LAC-Ausbilder";};
		case 6: { _rank = "Personalleiter";};
		case 7: { _rank = "Co-LAC Leiter";};
		case 8: { _rank = "LAC Leiter";};
		case 9: { _rank = "!!REPORT ADMIN!!";};
		case 10: { _rank = "Staatsanwalt";};
		case 11: { _rank = "Richter";};
	};

	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5' color='#d6c610'>L.A.C</t>", name player, _rank];
	
	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
};

if(playerSide == civilian) then
{
	_path = "<img image='images\idcards\civ\";
	
	_id = _path + "id_card.paa' size='8'/>";
	_presse = if(license_civ_presse) then {_path + "id_presse.paa' size='8'/>";} else {" "};
	_pkw = if(license_civ_driver) then {_path + "id_pkw.paa' size='8'/>";} else {" "}; 
	_lkw = if(license_civ_truck) then {_path + "id_lkw.paa' size='8'/>";} else {" "};
	_fish = if(getPlayerUID player == "76561198136538321") then {"<img image='images\idcards\cop\spec\our_dieter_kinder_ficker_lel.jpg' size='3.5'/>";} else {" "};
	
	_message = ["<t size='1.25'>%1</t><br/><br/>%2<br/><br/>%3<br/><br/>%4<br/><br/>%5<br/><br/>",name player,_id,_pkw,_lkw,_presse,_fish];
	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
};
