/*
	File: fn_pumpRepair.sqf
	
	Description:
	Quick simple action that is only temp.
*/
private["_method"];
if(doofi_b4r5 < 500) then
{
	if(man_ey_b4nK < 500) exitWith {_method = 0;};
	_method = 2;
}
	else
{
	_method = 1;
};

switch (_method) do
{
	case 0: {hint "You do not have $500 in cash or in your bank accoumt."};
	case 1: {vehicle player setDamage 0; doofi_b4r5 = doofi_b4r5 - 500; hint "You have repaired your vehicle for $500";};
	case 2: {vehicle player setDamage 0; man_ey_b4nK = man_ey_b4nK - 500; hint "You have repaired your vehicle for $500";};
};