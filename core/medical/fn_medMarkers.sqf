/*
	File: fn_copMarkers.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Marks cops on the map for other cops. Only initializes when the actual map is open.
*/
private["_markers","_meds"];
_markers = [];
_meds = [];

sleep 0.5;
if(visibleMap) then {
	{if(side _x == independent) then {_meds pushBack _x;}} foreach playableUnits; //Fetch list of cops / blufor
	
	//Create markers
	{
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "Mil_dot";
		_marker setMarkerTextLocal format["%1", _x getVariable["realname",name _x]];
	
		_markers pushBack [_marker,_x];
	} foreach _meds;
		
	while {visibleMap} do
	{
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					if ("ItemGPS" in assignedItems _unit) then
					{
						_marker setMarkerPosLocal (visiblePosition _unit);
					};
				};
			};
			
		} foreach _markers;
		if(!visibleMap) exitWith {};
		sleep 0.5;
	};

	{deleteMarkerLocal (_x select 0);} foreach _markers;
	_markers = [];
	_meds = [];
}; 