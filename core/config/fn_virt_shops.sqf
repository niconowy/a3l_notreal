/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["LakesideValley Markt",["cigarette","zoobeer","Rax's Rum","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","axt","fuelF","peach","storagesmall","storagebig","weddingring"]]};
	case "rebel": {["Rebellen Austattung",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","axt","fuelF","peach","RoadBlockRebel","boltcutter"]]};
	case "gang": {["Gang Markt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","axt","fuelF","peach","boltcutter"]]};
	case "murdermarket": {["Murder King - Schnellrestaurant", ["water","rabbit","redgull"]]};
	case "wongs": {["Wing-Weng-Pong Spezialitäten",["turtlesoup","turtle"]]};
	case "coffee": {["LakesideValley Cafe",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","marijuana","heroinp"]]};
	case "oil": {["Ölhändler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fisch Markt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "farmingmarket": {["Samenbank",["wheat seed","sunflower seed","bean seed","cotton seed","pumpkin seed","opium seed","coke seed","cannabis seed","wheat","sunflower","corn","bean","cotton","olive","pumpkin"]]};	
	case "glass": {["Glasshändler",["glass"]]};
	case "iron": {["Förderindustrie",["iron_r","copper_r","schwarzpulver","elektroteile"]]};
	case "diamond": {["Juwelier",["diamondc"]]};
	case "salt": {["Salzhändler",["salt_r"]]};
	case "cop": {["Polizei Austattung",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","lockpick","boltcutter","BarGate","RoadBlockConc","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "itemfbi": {["FBI Austattung",["blaulicht","donuts","coffee","spikeStrip","redgull","fuelF","defusekit","lockpick","BarGate","RoadBlockWood","RoadConeStripB"]]};
	case "cement": {["Zementhändler",["cement"]]};
	case "gold": {["Gold Ankauf",["goldbar"]]};
	case "baumarkt": {["Baumarkt",["laminat","grillkohle","axt"]]};
	case "ems": {["EMS Notfallaustattung",["water","coffee","rabbit","apple","redgull","tbacon","peach","lockpick","RoadCone","RoadConeB","RoadConeStrip","RoadConeStripB","RoadBlockWood","fuelF"]]};
	case "butcher": {["Bob's Metzgerei",["raw goat meat","raw chicken","raw sheep meat","raw rabbit"]]};
	case "adac": {["Reparatursachen",["water","rabbit","apple","redgull","tbacon","lockpick","fuelF","BarGate","RoadBlockConc","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "coppresse": {["Presseausweis",["presseformular"]]};
};