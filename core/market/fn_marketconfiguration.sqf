/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
		
	["diamondc", 2359, 1, 4596, 10, 1,
			[
					["brotteig",1],
					["mehl",1],
					["iron_r",1],
					["copper_r",1],
					["cement",1],
					["glass",1],
					["oilp",1],
					["salt_r",1],
					["elektroteile",1],
					["laminat",1],
					["grillkohle",1]
			]
	],
	
	["oilp", 2492, 1, 4492, 9, 2,
			[
					["brotteig",1],
					["mehl",1],
					["diamondc",1],
					["iron_r",1],
					["copper_r",1],
					["cement",1],
					["glass",1],
					["salt_r",1],
					["elektroteile",1],
					["laminat",1],
					["grillkohle",1]
			]
	],
	
	["iron_r", 1882, 1, 4425, 8, 3,
			[
					["diamondc",1],
					["copper_r",1],
					["cement",1],
					["glass",1],
					["oilp",1],
					["salt_r",1],
					["elektroteile",1],
					["laminat",1],
					["grillkohle",1]
			]
	],
   
	["elektroteile", 2100, 1, 5205, 7, 4,
			[
					["iron_r",1],
					["copper_r",1],
					["cement",1],
					["glass",1],
					["oilp",1],
					["salt_r",1],
					["diamondc",1],
					["laminat",1],
					["grillkohle",1]
			]
	],
	
	["cement", 1880, 1, 4380, 6, 5,
			[
					["diamondc",1],
					["iron_r",1],
					["copper_r",1],
					["glass",1],
					["oilp",1],
					["salt_r",1],
					["elektroteile",1],
					["laminat",1],
					["grillkohle",1]
			]
	],
	
	["copper_r", 1968, 1, 3459, 5, 6,
			[
					["brotteig",1],
					["mehl",1],
					["diamondc",1],
					["iron_r",1],
					["cement",1],
					["glass",1],
					["oilp",1],
					["salt_r",1],
					["elektroteile",1],
					["laminat",1],
					["grillkohle",1]
			]
	],
	
	["laminat", 1315, 1, 4015, 4, 7,
			[
					["iron_r",1],
					["copper_r",1],
					["cement",1],
					["glass",1],
					["oilp",1],
					["salt_r",1],
					["elektroteile",1],
					["grillkohle",1],
					["diamondc",1]
			]
	],
	
	["grillkohle", 1220, 1, 3820, 3, 8,
			[
					["iron_r",1],
					["copper_r",1],
					["cement",1],
					["glass",1],
					["oilp",1],
					["salt_r",1],
					["elektroteile",1],
					["laminat",1],
					["diamondc",1]
			]
	],
	
	["glass", 952, 1, 3541, 2, 9,
			[
					["diamondc",1],
					["iron_r",1],
					["copper_r",1],
					["cement",1],
					["oilp",1],
					["salt_r",1],
					["elektroteile",1],
					["laminat",1],
					["grillkohle",1]
			]
	],
   
	["salt_r", 855, 1, 2654, 1, 10,
			[
					["brotteig",1],
					["mehl",1],
					["diamondc",1],
					["iron_r",1],
					["copper_r",1],
					["cement",1],
					["glass",1],
					["oilp",1],
					["elektroteile",1],
					["laminat",1],
					["grillkohle",1]
			]
	],
   
	["sunflower", 449, 1, 786, 4, 8,
			[
					["brotteig",1],
					["mehl",1],
					["wheat",1],
					["corn",1],
					["bean",1],
					["cotton",1],
					["pumpkin",1],
					["olive",1]
			]
	],
   
	["corn", 650, 1, 846, 8, 4,
			[
					["brotteig",1],
					["mehl",1],
					["wheat",1],
					["sunflower",1],
					["bean",1],
					["cotton",1],
					["pumpkin",1],
					["olive",1]
			]
	],
   
	["pumpkin", 547, 1, 956, 9, 7,
			[
					["wheat",1],
					["sunflower",1],
					["corn",1],
					["bean",1],
					["cotton",1],
					["olive",1]
			]
	],
   
	["wheat", 650, 1, 1198, 8, 4,
			[
					["sunflower",1],
					["corn",1],
					["bean",1],
					["cotton",1],
					["pumpkin",1],
					["olive",1]
			]
	],
   
	["cotton", 445, 1, 917, 6, 3,
			[
					["wheat",1],
					["sunflower",1],
					["corn",1],
					["bean",1],
					["pumpkin",1],
					["olive",1]
			]
	],
	
	["mehl", 750, 1, 1423, 5, 4,
			[
					["sunflower",1],
					["corn",1],
					["bean",1],
					["pumpkin",1],
					["olive",1]
			]
	],
	
	["brotteig", 1306, 1, 2661, 8, 6,
			[
					["sunflower",1],
					["corn",1],
					["bean",1],
					["pumpkin",1],
					["olive",1]
			]
	],
	
///////////////////////////
// F I S C H   Z E U G E S  [fishmarket]
///////////////////////////
 
	["salema", 550, 1, 1250, 2, 5,
			[
					["ornate",1],
					["mackerel",1],
					["tuna",1],
					["mullet",1],
					["catshark",1]
			]
	],
 
	["ornate", 890, 1, 1690, 3, 4,
			[
					["salema",1],
					["mackerel",1],
					["tuna",1],
					["mullet",1],
					["catshark",1]
			]
	],
 
	["mackerel", 1046, 1, 1880, 4, 3,
			[
					["ornate",1],
					["salema",1],
					["tuna",1],
					["mullet",1],
					["catshark",1]
			]
	],
 
	["tuna", 320, 1, 1220, 1, 6,
			[
					["ornate",1],
					["salema",1],
					["mackerel",1],
					["mullet",1],
					["catshark",1]
			]
	],
 
	["mullet", 1250, 1, 1991, 5, 2,
			[
					["ornate",1],
					["salema",1],
					["tuna",1],
					["mackerel",1],
					["catshark",1]
			]
	],
 
	["catshark", 1245, 1, 1968, 6, 1,
			[
					["ornate",1],
					["salema",1],
					["tuna",1],
					["mullet",1],
					["mackerel",1]
			]
	],

/////////////////////////
/*
        I L L E G A L E
        S T O F F E
*/
/////////////////////////

	["cocainep", 4475, 1, 7291, 5, 1,
			[
					["marijuana",1],
					["turtle",1],
					["heroinp",1],
					["schwarzpulver",1]
			]
	],
	
	["heroinp", 4205, 1, 6899, 4, 2,
			[
					["marijuana",1],
					["turtle",1],
					["cocainep",1],
					["schwarzpulver",1]
			]
	],
	
	["schwarzpulver", 4400, 1, 7156, 3, 3,
			[
					["marijuana",1],
					["turtle",1],
					["cocainep",1],
					["heroinp",1]
			]
	],
	
	["turtle", 8750, 1, 10000, 2, 4,
			[
					["marijuana",1],
					["cocainep",1],
					["heroinp",1],
					["schwarzpulver",1]
			]
	],
   
	["marijuana", 4050, 1, 9484, 1, 5,
			[
					["turtle",1],
					["cocainep",1],
					["heroinp",1],
					["schwarzpulver",1]
			]
	]
   
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};