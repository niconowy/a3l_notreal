/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {7};
	case "oilp": {5};
	case "heroinu": {6};
	case "heroinp": {3};
	case "marijuana": {2};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {2};
	case "glass": {2};
	case "diamond": {4};
	case "diamondc": {2};
	case "cocaine": {6};
	case "cocainep": {4};
	case "spikeStrip": {8};
	case "rock": {6};
	case "cement": {4};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "wheat": {1};
	case "sunflower": {1};
	case "corn": {2};
	case "bean": {1};
	case "cotton": {1};
	case "olive": {1};
	case "opium": {5};
	case "cannabis": {3};
	case "pumpkin": {2};
	case "wheat seed": {0.5};
	case "sunflower seed": {0.5};
	case "corn seed": {0.5};
	case "bean seed": {0.5};
	case "cotton seed": {0.5};
	case "olive seed": {0.5};
	case "opium seed": {0.5};
	case "coke seed": {0.5};
	case "cannabis seed": {0.5};
	case "pumpkin seed": {0.5};
	case "raw goat meat": {2};
	case "raw chicken": {2};
	case "raw sheep meat": {2};
	case "raw rabbit": {2};
	case "cigarette": {1};
	case "RoadConeStripB": {5};
	case "RoadConeB": {2};
	case "RoadConeStrip": {5};
	case "RoadCone": {2};
	case "RoadBlockWood": {8};
	case "RoadBlockConc": {10};
	case "RoadBlockRebel": {10};
	case "BarGate": {15};
	case "Rax's Rum" : {1};
	case "zoobeer": {1}; // Duff Beer
	case "blaulicht":{5};
	case "augenbinde":{2};
	case "schwarzpulver":{1};
	case "kohle":{2};
	case "elektroteile":{1};
	case "laminat":{2};
	case "holz":{4};
	case "grillkohle":{3};

	default {1};
};
