
if((playerSide == civilian) && (!life_action_inUse) && (vehicle player == player)) then // +  && (!life_fnc_surrender)
{
	{
		_str = [_x] call life_fnc_varToStr;
		_val = missionNameSpace getVariable _x;
		if(_val > 0 ) then
		{
			if( _str == "Axt" || _str == "axt" ) then
			{
				[] spawn life_fnc_axtUse;
			};
		};
	} foreach life_inv_items;
};