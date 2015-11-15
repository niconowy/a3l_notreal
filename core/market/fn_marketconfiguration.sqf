/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
		
	["diamondc", 2359, 1, 5359, 10, 1,
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
	
	["oilp", 2492, 1, 5492, 9, 2,
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
	
	["iron_r", 1882, 1, 4625, 8, 3,
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
   
	["elektroteile", 2100, 1, 5105, 7, 4,
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
	
	["cement", 1880, 1, 4980, 6, 5,
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
	
	["copper_r", 1968, 1, 3123, 5, 6,
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
	
	["laminat", 1315, 1, 4315, 4, 7,
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
	
	["grillkohle", 1220, 1, 4120, 3, 8,
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
	
	["glass", 952, 1, 3185, 2, 9,
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
   
	["salt_r", 855, 1, 2755, 1, 10,
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
   
	["corn", 650, 1, 900, 8, 4,
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
   
	["pumpkin", 547, 1, 1025, 6, 6,
			[
					["wheat",1],
					["sunflower",1],
					["corn",1],
					["bean",1],
					["cotton",1],
					["olive",1]
			]
	],
   
	["wheat", 650, 1, 1295, 10, 2,
			[
					["sunflower",1],
					["corn",1],
					["bean",1],
					["cotton",1],
					["pumpkin",1],
					["olive",1]
			]
	],
   
	["cotton", 445, 1, 957, 2, 10,
			[
					["wheat",1],
					["sunflower",1],
					["corn",1],
					["bean",1],
					["pumpkin",1],
					["olive",1]
			]
	],
	
	["mehl", 750, 1, 1423, 10, 2,
			[
					["sunflower",1],
					["corn",1],
					["bean",1],
					["pumpkin",1],
					["olive",1]
			]
	],
	
	["brotteig", 1306, 1, 2861, 10, 2,
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
 
	["salema", 550, 1, 1550, 2, 5,
			[
					["ornate",1],
					["mackerel",1],
					["tuna",1],
					["mullet",1],
					["catshark",1]
			]
	],
 
	["ornate", 890, 1, 1890, 3, 4,
			[
					["salema",1],
					["mackerel",1],
					["tuna",1],
					["mullet",1],
					["catshark",1]
			]
	],
 
	["mackerel", 1980, 1, 2980, 4, 3,
			[
					["ornate",1],
					["salema",1],
					["tuna",1],
					["mullet",1],
					["catshark",1]
			]
	],
 
	["tuna", 320, 1, 1320, 1, 6,
			[
					["ornate",1],
					["salema",1],
					["mackerel",1],
					["mullet",1],
					["catshark",1]
			]
	],
 
	["mullet", 1450, 1, 2450, 5, 2,
			[
					["ornate",1],
					["salema",1],
					["tuna",1],
					["mackerel",1],
					["catshark",1]
			]
	],
 
	["catshark", 1345, 1, 2345, 6, 1,
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

	["cocainep", 4475, 1, 7675, 5, 1,
			[
					["marijuana",1],
					["turtle",1],
					["heroinp",1],
					["schwarzpulver",1]
			]
	],
	
	["heroinp", 4205, 1, 7405, 4, 2,
			[
					["marijuana",1],
					["turtle",1],
					["cocainep",1],
					["schwarzpulver",1]
			]
	],
	
	["schwarzpulver", 4400, 1, 7600, 3, 3,
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
   
	["marijuana", 4050, 1, 10253, 1, 5,
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