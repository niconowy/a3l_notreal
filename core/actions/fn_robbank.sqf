/*
    Sending robbery-request to server 
*/
private["_shop","_robber"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; 
_action = [_this,2] call BIS_fnc_param;

if(playersNumber west < 7) exitWith { hint "Der Geldtransporter war noch nicht da! Warte bis 7 Cops im Dienst sind für den Transport!"};
if(isNull _shop OR isNull _robber) exitWith {};
if(side _robber != civilian) exitWith { hint "Korruptes Schwein verschwinde!" };// We do not want anyone but civilianz to rob the stations.
if (vehicle player != _robber) exitWith { hint "Wie bist du mit dem Auto in die Bank gekommen? Verschwinde!" };
if (currentWeapon _robber == "") exitWith { hint "Du bekommst ohne wirklichen Meinungsverstärker keine Kohle!" };//is he trying to rob without a weapon? Lets taunt him a bit!
if(_robber distance _shop > 3) exitWith { hint "Du bist zu weit weg!" };
[[_shop,_robber,_action],"TON_fnc_robBank",false,false] spawn life_fnc_MP;//now we send the info to the server to be processed further there.