private["_un","_dm","_src","_prj"];
_un = _this select 0;
_dm = _this select 2;
_src = _this select 3;
_prj = _this select 4;

//Handle the tazer first (Top-Priority).
if(!isNull _src) then {
	if(alive _un) then {
		if(_src != _un) then {
			if(_prj == "26_taser") then {
				_dm = 0;
				if(!life_istazed) then {
					[_un,_src] spawn life_fnc_tazed;
					_dm = 0;
				};
			};

	//A little admin feature ;D		
			if(_prj == "B_127x108_Ball") then {
				_dm = 0;
				_un setFatigue 1;
			};
		};
	};
};

//[] call life_fnc_hudUpdate;
_dm;