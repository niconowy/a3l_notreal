/*

	Show cop license to target player

*/

private ["_target", "_message","_rank","_coplevel","_mediclevel","_adaclevel","_id","_pkw","_lkw","_presse"];

_target = cursorTarget;

if(isNull _target) then {_target = player;};

if(!(_target isKindOf "Man")) then {_target = player;};

if(!(alive _target)) then {_target = player;};

if(playerSide == west) then
{
	_coplevel = call life_coplevel;
	
	switch (_coplevel) do
	{
		case 1: { _rank = "Rekrut";};
		case 2: { _rank = "Officer";};	
		case 3: { _rank = "Detective";};	
		case 4: { _rank = "Sergeant";};
		case 5: { _rank = "First Sergeant";};
		case 6: { _rank = "Lieutenant";};
		case 7: { _rank = "First Lieutenant";};
		case 8: { _rank = "Captain";};
		case 9: { _rank = "Police Commander";};
		case 10: { _rank = "Deputy Chief";};
		case 11: { _rank = "Assistant Chief";};
		case 12: { _rank = "Chief of Police";};
	};
	
	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5'>Polizei</t>", name player, _rank];
	
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

	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5'>Sanitaeter</t>", name player, _rank];
	
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

	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/>", name player, _rank];
	
	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
};

if(playerSide == civilian) then
{
	_id = "<img image='images\idcards\id_card.jpg' size='4.75'/>";
	_presse = if(license_civ_presse) then {"<img image='images\idcards\id_presse.jpg' size='4.75'/>";} else {""};
	_pkw = if(license_civ_driver) then {"<img image='images\idcards\id_pkw.jpg' size='4.75'/>";} else {""}; 
	_lkw = if(license_civ_truck) then {"<img image='images\idcards\id_lkw.jpg' size='4.75'/>";} else {""}; 
	
	_message = ["<t size='1.25'>%1</t><br/><br/>%2<br/>%3<br/>%4<br/>%5<br/>",name player,_id,_presse,_pkw,_lkw];
	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
	
};

