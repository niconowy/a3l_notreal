/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
if(player getVariable["restrained",true]) exitWith {hint "Du kannst keine Gegenstände verwenden während du gefesselt bist!"};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player playMove "cl3_anim_eat";
			playsound "trinken";
			life_thirst = 100;
//			player setFatigue 0; Unlogisch, oder?
		};
	};
	
	case (_item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player playMove "cl3_anim_eat";
			playsound "trinken";
			life_thirst = 100;
			player setFatigue 0;			
		};
	};

	case (_item == "cigarette"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			titleText["Du rauchst eine Zigarette","PLAIN"];
			player setFatigue 1;
			[] spawn life_fnc_useCigarette;	
		};
	};

	case (_item == "zoobeer"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player playMove "cl3_anim_eat";
			playsound "trinken";
			titleText["Du hast Bier getrunken.","PLAIN"];
			life_intox = life_intox + 0.02;
		};
	};
	
	case (_item == "Rax's Rum"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player playMove "cl3_anim_eat";
			playsound "trinken";
			titleText["Du hast Jack Daniel's Rum getrunken.","PLAIN"];
			life_intox = life_intox + 0.06;
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "bohrmaschine"): {
		[cursorTarget] spawn life_fnc_bohrmaschine;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};

	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			titleText[" - - - S M O K E   W E E D   E V E R Y D A Y - - - ","PLAIN"];
			life_intox = life_intox + 0.10;
			[] spawn life_fnc_useMarijuana;
			player setFatigue 1;
		};
	};

	case (_item == "cocainep"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn
			{
				life_cocaine_effect = time;
				titleText["Du sniffst Kokain... du fühlst dich seltsam... als wenn du durchgehend Rennen könntest!","PLAIN"];
				player enableFatigue false;
				life_intox = life_intox + 0.10;
				[] spawn life_fnc_useCocaine;
				waitUntil {!alive player OR ((time - life_cocaine_effect) > (2 * 60))};
				player enableFatigue true;
			};
		};
	};

	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			titleText["Du injiziert dir Heroin.","PLAIN"];
			life_intox = life_intox + 0.10;
			[] spawn life_fnc_useHeroin;
		};
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};

	case (_item == "BarGate"):
	{
		if(!isNull life_bargate) exitWith {hint "Du hast bereits ein BarGate in der Hand"};
		if(playerSide != civilian) then
		{
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_BarGate;
			};
		};
	};

	case (_item == "RoadCone"):
	{
		if(!isNull life_roadcone) exitWith {hint "Du hast bereits ein RoadCone in der Hand"};
		//if cop override and allow use of item
		if(playerSide != civilian) then 
		{
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadCone;
			};
		};
	};

	case (_item == "RoadConeB"):
	{
		if(!isNull life_roadcone) exitWith {hint "Du hast bereits eine blinkende RoadCone in der Hand"};
		//if cop override and allow use of item
		if(playerSide != civilian) then 
		{
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadConeB;
			};
		};
	};
	case (_item == "RoadConeStrip"):
	{
		if(!isNull life_roadcone) exitWith {hint "Du hast bereits ein RoadCone-Strip in der Hand"};
		//if cop override and allow use of item
		if(playerSide != civilian) then 
		{
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadConeStrip;
			};
		};
	};
	case (_item == "RoadConeStripB"):
	{
		if(!isNull life_roadcone) exitWith {hint "Du hast bereits eine blinkende RoadCone-Strip in der Hand"};
		//if cop override and allow use of item
		if(playerSide != civilian) then 
		{
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadConeStripB;
			};
		};
	};

	case (_item == "RoadBlockConc"):
	{
		if(!isNull life_roadblock) exitWith {hint "Du hast bereits ein Strassenblock in der Hand"};
		//if cop override and allow use of item
		if(playerSide == west) then 
		{
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadBlockConc;
			};
		};
	};

	case (_item == "RoadBlockWood"):
	{
		if(!isNull life_roadblock) exitWith {hint "Du hast bereits eine Sperre aus Holz in der Hand"};
		//if cop override and allow use of item
		if(playerSide != civilian) then 
		{
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadBlockWood;
			};
		};
	};

	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player playMove "cl3_anim_eat";
			playsound "trinken";
			life_thirst = 100;
			player setFatigue 0;
			hint "Ich fühle mich top fit!";
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
				hint "Puhh... mir geht langsam aber sicher wieder die Puste aus... glaube der EnergyDrink hat nachgelassen";
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
		closeDialog 0;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	case (_item == "weddingring"):
	{
		if( life_married != "-2" ) then 
		{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				hint "Jemand möchte dich heiraten. Die Regierung gratuliert dem Paar und du bekommst $5000!";
				ja_pare = ja_pare + 5000;
				if(life_married == "-1") then {
					life_married = "jemand";
				};
				[player,"umbrellam"] call life_fnc_globalSound;		//:TODO: --> Neuer Sound Finden!
				[[0,format["%1 und %2 haben geheiratet! Wir wünschen dem glücklichen Paar alles Gute!",profileName, life_married]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
				life_married = "-2";
			};
		}
		else
		{
			hint "Du kannst nur einmal heiraten... DU FREMDGEHER DU!!!!";
			[[0,format["== TRATSCH-UND-KLATSCH =="]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			[[0,format["%1 ist bereits verheiratet und möchte Fremdgehen...",profileName]],nil,false] spawn life_fnc_MP;
		};
	};
	
	case (_item == "presseformular"):
	{
		if(playerSide != civilian) exitWith {hint "Nur Zivilisten können das Presseformular ausfüllen!"};
		if([false,_item,1] call life_fnc_handleInv) then {
			license_civ_presse = true;
			hint parseText format["Du bist nun offiziell als Presse eingetragen.<br/><br/>Solltest du ins Gefängnis einwandern oder Personen überfallen, wird dir dieser Ausweis entzogen!"];
		};
	};
	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;