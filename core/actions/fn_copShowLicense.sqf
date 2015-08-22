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
		case 1: { _rank = "<img image='images\idcards\cop\1.paa' size='4.75'/>";};
		case 2: { _rank = "<img image='images\idcards\cop\2.paa' size='4.75'/>";};	
		case 3: { _rank = "<img image='images\idcards\cop\3.paa' size='4.75'/>";};
		case 4: { _rank = "<img image='images\idcards\cop\4.paa' size='4.75'/>";};
		case 5: { _rank = "<img image='images\idcards\cop\5.paa' size='4.75'/>";};
		case 6: { _rank = "<img image='images\idcards\cop\6.paa' size='4.75'/>";};
		case 7: { _rank = "<img image='images\idcards\cop\7.paa' size='4.75'/>";};
		case 8: { _rank = "<img image='images\idcards\cop\8.paa' size='4.75'/>";};
		case 9: { _rank = "<img image='images\idcards\cop\9.paa' size='4.75'/>";};
		case 10: { _rank = "<img image='images\idcards\cop\10.paa' size='4.75'/>";};
		case 11: { _rank = "<img image='images\idcards\cop\11.paa' size='4.75'/>";};
		case 12: { _rank = "<img image='images\idcards\cop\12.paa' size='4.75'/>";};
	};
	
	_message = format["<t size='1.25'>%1</t><br/><br/>%2<br/>", name player, _rank];
	
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
	_id = "<img image='images\idcards\civ\id_card.jpg' size='4.75'/>";
	_presse = if(license_civ_presse) then {"<img image='images\idcards\civ\id_presse.jpg' size='4.75'/>";} else {"<br/>"};
	_pkw = if(license_civ_driver) then {"<img image='images\idcards\civ\id_pkw.jpg' size='4.75'/>";} else {"<br/>"}; 
	_lkw = if(license_civ_truck) then {"<img image='images\idcards\civ\id_lkw.jpg' size='4.75'/>";} else {"<br/>"}; 
	
	_message = ["<t size='1.25'>%1</t><br/><br/>%2<br/>%3<br/>%4<br/>%5<br/>",name player,_id,_pkw,_lkw,_presse];
	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
	
};

