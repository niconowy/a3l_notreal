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
	case "rebel": {["Rebellen Austatter",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","axt","fuelF","peach","boltcutter"]]};
	case "gang": {["Gang Markt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","axt","fuelF","peach","boltcutter"]]};
	case "murdermarket": {["Murder King - So schnell wie nie!", ["rabbit","redgull"]]};
	case "wongs": {["Wing-Chi's Spezialitäten",["turtlesoup","turtle"]]};
	case "coffee": {["Gunnmeier's Mahlzeiten",["coffee","donuts","keks","pizzabrot","pizza"]]};
	case "heroin": {["Mikey's Stoffecke",["cocainep","marijuana","heroinp"]]};
	case "oil": {["Öl Ankauf",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Aal-Dieter's Frischfisch",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "farmingmarket": {["Joe Jay's Gärtnerei",["wheat seed","sunflower seed","bean seed","cotton seed","pumpkin seed","opium seed","coke seed","cannabis seed","wheat","sunflower","corn","bean","cotton","olive","pumpkin"]]};	
	case "glass": {["Glasshändler",["glass"]]};
	case "iron": {["Förder-Industrie",["iron_r","copper_r","schwarzpulver","elektroteile"]]};
	case "diamond": {["Juwelier",["diamondc"]]};
	case "salt": {["Salzhändler",["salt_r"]]};
	case "cop": {["Polizei Austatter",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","sos","lockpick","nothammer","boltcutter","BarGate","RoadBlockConc","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "itemfbi": {["FBI Austatter",["donuts","coffee","spikeStrip","redgull","fuelF","defusekit","blaulicht","sos","lockpick","nothammer","BarGate","RoadBlockConc","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "cement": {["Zementhändler",["cement"]]};
	case "gold": {["Gold Ankauf",["goldbar"]]};
	case "backer": {["Gunnmeier's Backhaus",["mehl","brotteig"]]};
	case "baumarkt": {["Baumarkt",["laminat","grillkohle","axt"]]};
	case "ems": {["EMS Notfallaustattung",["water","coffee","rabbit","apple","redgull","tbacon","peach","lockpick","nothammer","BarGate","RoadBlockConc","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB","fuelF"]]};
	case "butcher": {["Bob's Metzgerei",["raw goat meat","raw chicken","raw sheep meat","raw rabbit"]]};
	case "adac": {["LAC Werkbank",["water","rabbit","apple","redgull","tbacon","lockpick","nothammer","fuelE","BarGate","RoadBlockConc","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "adacdriver": {["LAC Formular Druck",["permdriverformular"]]};
	case "coppresse": {["Firmen-Lizenzen",["presseformular","taxischeinformular"]]};
};