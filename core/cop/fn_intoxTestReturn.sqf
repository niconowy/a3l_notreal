/*
	File: fn_intoxTestReturn.sqf
	@Deo	
	Description:
	Returns the Intox Results.
*/
private["_civ","_intox"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_intox = [_this,1,0,[0]] call BIS_fnc_param;
if(isnull _civ) exitWith {};

if(_intox > 0.08) then 
{
	hint parseText format["<t size='1.75' color='#ff0000'>Drogen- / Alkoholtest</t><br/><br/><t size='1.3'>Getestet:</t><br/> %1<br/><br/><t size='1.3'>Intox-Level:</t><br/>%2<br/><t color='#ff0000'>Nicht Verkehrssicher!</t>",name _civ,_intox];
} 
else 
{
	hint parseText format["<t size='1.75' color='#ff0000'>Drogen- / Alkoholtest</t><br/><br/><t size='1.3'>Getestet:</t><br/> %1<br/><br/><t size='1.3'>Intox-Level:</t><br/>%2<br/>Verkehrssicher!",name _civ,_intox];
};

if (_intox > 0.20) then 
{
	[[getPlayerUID _civ,name _civ,"647"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};