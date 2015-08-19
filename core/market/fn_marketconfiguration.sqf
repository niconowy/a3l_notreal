/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
		
	["diamondc", 3876, 1, 6845, 10, 1,
			[
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
	
	["oilp", 3592, 1, 6490, 9, 2,
			[
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
	
	["iron_r", 3320, 1, 6150, 8, 3,
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
   
	["elektroteile", 3200, 1, 6000, 7, 4,
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
	
	["cement", 2880, 1, 5600, 6, 5,
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
	
	["copper_r", 2460, 1, 5075, 5, 6,
			[
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
	
	["laminat", 2316, 1, 4895, 4, 7,
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
	
	["grillkohle", 1520, 1, 3900, 3, 8,
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
	
	["glass", 1284, 1, 3605, 2, 9,
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
   
	["salt_r", 1060, 1, 3325, 1, 10,
			[
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
   
	["sunflower", 649, 1, 2649, 4, 8,
			[
					["wheat",1],
					["corn",1],
					["bean",1],
					["cotton",1],
					["pumpkin",1],
					["olive",1]
			]
	],
   
	["corn", 870, 1, 2870, 8, 4,
			[
					["wheat",1],
					["sunflower",1],
					["bean",1],
					["cotton",1],
					["pumpkin",1],
					["olive",1]
			]
	],
   
	["pumpkin", 747, 1, 2747, 6, 6,
			[
					["wheat",1],
					["sunflower",1],
					["corn",1],
					["bean",1],
					["cotton",1],
					["olive",1]
			]
	],
   
	["wheat", 1045, 1, 3045, 10, 2,
			[
					["sunflower",1],
					["corn",1],
					["bean",1],
					["cotton",1],
					["pumpkin",1],
					["olive",1]
			]
	],
   
	["cotton", 645, 1, 2645, 2, 10,
			[
					["wheat",1],
					["sunflower",1],
					["corn",1],
					["bean",1],
					["pumpkin",1],
					["olive",1]
			]
	],

/////////////////////////

	["cocainep", 4675, 1, 7675, 5, 1,
			[
					["marijuana",1],
					["turtle",1],
					["heroinp",1],
					["schwarzpulver",1]
			]
	],
	
	["heroinp", 4505, 1, 7505, 4, 2,
			[
					["marijuana",1],
					["turtle",1],
					["cocainep",1],
					["schwarzpulver",1]
			]
	],
	
	["schwarzpulver", 4600, 1, 7600, 3, 3,
			[
					["marijuana",1],
					["turtle",1],
					["cocainep",1],
					["heroinp",1]
			]
	],
	
	["turtle", 9575, 1, 9175, 2, 4,
			[
					["marijuana",1],
					["cocainep",1],
					["heroinp",1],
					["schwarzpulver",1]
			]
	],
   
	["marijuana", 4350, 1, 7350, 1, 5,
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