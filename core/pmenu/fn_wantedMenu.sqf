#include <macro.h>
/*
	File: fn_wantedMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the Wanted menu and connects to the APD.
*/
private["_display","_list","_name","_crimes","_bounty","_units"];
disableSerialization;

createDialog "life_wanted_menu";

_display = findDisplay 2400;
_list = _display displayCtrl 2401;
_players = _display displayCtrl 2406;
lbClear _list;
_units = [];

lbClear _players;

{
	if(side _x == civilian) then {
    //_side = switch(side _x) do {case west: {"LVPD"}; case civilian : {"ZIV"}; case independent : {"EMS"}; case east : {"LAC"}; default {"Unknown"};};
		_players lbAdd format["%1 - %2", name _x];
		_players lbSetdata [(lbSize _players)-1,str(_x)];
	};
} foreach playableUnits;
lbSort [_players,"ASC"];

_list2 = getControl(2400,2407);
lbClear _list2; //Purge the list

_crimes = 
[
	["Fahren ohne PKW-Schein","3","1"],
	["Fahren ohne LKW-Schein","5","2"],
	["Fahren ohne Boot-Schein","5","3"],
	["Trolling im Straßenverkehr","10","4"],
	["Behindern des Verkehrs (Land)","3","5"],
	["Behindern eines Fahrzeugspawns","6","6"],
	["Fahren ohne Beleuchtung (nachts)","5","7"],
	["Rücksichtsloses Fahren","2","8"],
	["Missachtung der Höchstgeschwindigkeit (innerorts)","0","9"],
	["Missachtung der Höchstgeschwindigkeit (Außerorts)","3","10"],
	["Lärmbelästigung","2","11"],
	["Falschparken","3","12"],
	["Wenden auf Offendlichen Straßen","3","13"],
	["Permanentes Rückwärtsfahren","0","14"],
	["Fahren in eine Einbahnstraße","3","15"],
	["Fahren unter Alkoholeinfluss 0,1 bis 0,2","10","16"],
	["Ampelsignal Ignorieren","10","17"],
	["Fliegen ohne Flugschein","10","18"],
	["Landen in einem HQ","10","19"],
	["Fliegen über einer Stadt/Hovern","10","20"],
	["Fallschirmspringen über einer Stadt","5","21"],
	["5-15 Km/h Geschwindigkeitsüberscheitung","2","22"],
	["15-25 Km/h Geschwindigkeitsüberscheitung","3","23"],
	["25+ Km/h Geschwindigkeitsüberscheitung","5","24"],
	["50+ Km/h Geschwindigkeitsüberscheitung","10","25"],
	["Führen eines Karts außerhalb der Rennstrecke","0","26"],
	["Führen eines Karts in der Nacht","0","27"],
	["Führen eines Rennwagens außerhalb der Rennstrecke","0","28"],
	["Drogenbesitz LKW / Helikoptor","0","29"],
	["Drogenbesitz PKW / Quadbikes","0","30"],
	["Drogenbesitz Boot / Wasserfahrzeugen","0","31"],
	["Drogenbesitz im Rucksack","0","32"],
	["Drogenhandel Verkauf","15","33"],
	["Drogenhandel Ankauf","15","34"],
	["Anbau von Drogen","30","35"],
	["Versuchter Diebstahl","0","36"],
	["Diebstahl","0","37"],
	["Versuchter Diebstahl eines KfZ","0","38"],
	["Diebstahl eines KfZ","15","39"],
	["Hehlerei","10","40"],
	["Raub","15","41"],
	["Schwerer Raub","25","42"],
	["Beschtechung","30","43"],
	["Rauberische Erpressung","25","44"],
	["Bankraub","40","45"],
	["Erpressung","0","46"],
	["Menschenhandel","75","47"],
	["Führen einer Waffe ohne Lizenz","0","48"],
	["Mit gezogener Waffe in der Stadt","0","49"],
	["Besitz einer Illegalen Waffe","15","50"],
	["Schusswaffen gebrauch innerorts","15","51"],
	["Waffenhandel (Verkauf)","30","52"],
	["Waffenhandel (Kaufen)","15","53"],
	["Versuchte Körperverletzung","5","54"],
	["Körperverletzung","10","55"],
	["Gefärliche Körperverletzung","25","56"],
	["Freiheitsberaubung","15","57"],
	["Belästigung","5","58"],
	["Geißelnahme","40","59"],
	["Physologische Verletzung","15","60"],
	["Beleidigung","5","61"],
	["Drohung","15","62"],
	["Mord","40","63"],
	["Prostitution","20","64"],
	["Annahme von Prostitution","12","65"],
	["Entziehung pol. Massnahmen","0","66"],
	["Widerstand gegen Vollstreckungsbeamte","0","67"],
	["Behinderung von Beamten bei Ausführung d. Arbeit","0","68"],
	["Belästigung/Beleidigung eines Beamten","0","69"],
	["Fahrerflucht nach Unfall","15","70"],
	["100+ Kmh Geschwindigkeitsüberschreitung","20","71"],
	["Alkoholeinfluss ab 0.2","10","72"],
	["Betretten von Sperrzonen","15","73"],
	["Durchbrechen von Absperrungen","10","74"],
	["Vermummungsverbot","0","75"],
	["Unangemeldete Demonstration","0","76"],
	["Amtsanmassung","15","77"],
    ["Gefängnisausbruch (Flüchtiger)","40","78"],
    ["Gefängnisausbruch (Beihilfe)","30","79"],
    ["Allg. Beihilfe bei Straftaten","10","80"],
	["Schildkröten LKW / Helikopter","30","81"],
	["Schildkröten PKWs + Quadbikes","30","82"],
	["Schildkröten Boot/ Wasserfahrzeugen","30","83"],
	["Schildkröten Im Rucksack","30","84"]
];	

{
	_list2 lbAdd format["%1 - %2 Min (%3)",(_x select 0),(_x select 1),(_x select 2)];
	_list2 lbSetData [(lbSize _list2)-1,(_x select 2)];
} foreach _crimes;

ctrlSetText[2404,"Verbinde mit LVPD..."];

/*if(__GETC__(life_coplevel) < 3 && __GETC__(life_adminlevel) == 0) then
{
	ctrlShow[2405,false];
	ctrlShow[9800,false];
};*/

[[player],"life_fnc_wantedFetch",false,false] spawn life_fnc_MP;