/*
	Author: Variatox Sandrox
	File: fn_spawnNotification
	
	Description:
	Zeigt dem Spieler die Position an, an der er
	gespawnt ist.
*/

private["_location","_AField","_JVA","_LDiablos","_LSCGericht",
"_LSCity","_MTown","_RAField","_RBHof","_RPost","_SCristobal"];

titleText ["Ts3 Channel Checked. Willkommen!","BLACK IN"];

_location = _this select 0;

_LSCity = "Lakeside City";
_LSCGericht = "Lakeside Gericht";
_MTown = "Morrison Town";
_LDiablos = "Los Diablos";
_SCristobal = "San Cristobal";
_AField = "Flughafen";
_RAField = "Rebellen Flughafen";
_RPost = "Rebellen Posten";
_RBHof = "Rebellen Bauernhof";
_JVA = "Justizvollzugsanstalt";

switch (_location) do {

	case _LSCity: {[[["","<br/><br/><br/><br/><br/><br/><br/>"],["Willkommen in ","align = 'center' size = '0.6'"],["","<br/>"],["      Lakeside City","align = 'center' size = '0.7' font='PuristaBold'"]]] spawn BIS_fnc_typeText2;};
	case _LSCGericht: {[[["","<br/><br/><br/><br/><br/><br/><br/>"],["Willkommen beim ","align = 'center' size = '0.6'"],["","<br/>"],["      Lakeside Gericht","align = 'center' size = '0.7' font='PuristaBold'"]]] spawn BIS_fnc_typeText2;};
	case _MTown: {[[["","<br/><br/><br/><br/><br/><br/><br/>"],["Willkommen in ","align = 'center' size = '0.6'"],["","<br/>"],["      Morrison Town","align = 'center' size = '0.7' font='PuristaBold'"]]] spawn BIS_fnc_typeText2;};
	case _LDiablos: {[[["","<br/><br/><br/><br/><br/><br/><br/>"],["Willkommen in ","align = 'center' size = '0.6'"],["","<br/>"],["      Los Diablos","align = 'center' size = '0.7' font='PuristaBold'"]]] spawn BIS_fnc_typeText2;};
	case _SCristobal: {[[["","<br/><br/><br/><br/><br/><br/><br/>"],["Willkommen in ","align = 'center' size = '0.6'"],["","<br/>"],["      San Cristobal","align = 'center' size = '0.7' font='PuristaBold'"]]] spawn BIS_fnc_typeText2;};
	case _AField: {[[["","<br/><br/><br/><br/><br/><br/><br/>"],["Willkommen beim ","align = 'center' size = '0.6'"],["","<br/>"],["      Flughafen","align = 'center' size = '0.7' font='PuristaBold'"]]] spawn BIS_fnc_typeText2;};
	case _RAField: {[[["","<br/><br/><br/><br/><br/><br/><br/>"],["Willkommen beim ","align = 'center' size = '0.6'"],["","<br/>"],["      Rebellen Posten SW","align = 'center' size = '0.7' font='PuristaBold'"]]] spawn BIS_fnc_typeText2;};
	case _RPost: {[[["","<br/><br/><br/><br/><br/><br/><br/>"],["Willkommen beim ","align = 'center' size = '0.6'"],["","<br/>"],["      Rebellen Posten W","align = 'center' size = '0.7' font='PuristaBold'"]]] spawn BIS_fnc_typeText2;};
	case _RBHof: {[[["","<br/><br/><br/><br/><br/><br/><br/>"],["Willkommen beim ","align = 'center' size = '0.6'"],["","<br/>"],["      Rebellen Bauernhof","align = 'center' size = '0.7' font='PuristaBold'"]]] spawn BIS_fnc_typeText2;};
	case _JVA: {[[["","<br/><br/><br/><br/><br/><br/><br/>"],["Willkommen zur ","align = 'center' size = '0.6'"],["","<br/>"],["      Justizvollzugsanstalt","align = 'center' size = '0.7' font='PuristaBold'"]]] spawn BIS_fnc_typeText2;};
	default {[[["","<br/><br/><br/><br/><br/><br/><br/>"],["Willkommen in ","align = 'center' size = '0.6'"],["","<br/>"],["      Lakeside Valley","align = 'center' size = '0.7' font='PuristaBold'"]]] spawn BIS_fnc_typeText2;};

};