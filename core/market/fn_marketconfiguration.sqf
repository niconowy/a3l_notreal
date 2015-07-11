/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
		
	["diamondc", 4845, 4255, 5435, 4, 2,
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
   
	["grillkohle", 1900, 1350, 2450, 4, 2,
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
   
	["elektroteile", 4000, 3450, 4550, 4, 2,
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
   
	["laminat", 2895, 2345, 3445, 4, 2,
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
   
	["oilp", 4490, 3955, 5025, 4, 2,
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
   
	["salt_r", 1325, 775, 1875, 4, 2,
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
   
	["cement", 3600, 3050, 4150, 4, 2,
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
   
	["glass", 1605, 1055, 2155, 4, 2,
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
   
	["iron_r", 4150, 3550, 4750, 4, 2,
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
   
	["copper_r", 3075, 2575, 3775, 4, 2,
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
   
	["sunflower", 249, 274, 299, 2, 1,
			[
					["wheat",1],
					["corn",1],
					["bean",1],
					["cotton",1],
					["pumpkin",1],
					["olive",1]
			]
	],
   
	["corn", 870, 850, 970, 2, 1,
			[
					["wheat",1],
					["sunflower",1],
					["bean",1],
					["cotton",1],
					["pumpkin",1],
					["olive",1]
			]
	],
   
	["pumpkin", 747, 717, 797, 2, 1,
			[
					["wheat",1],
					["sunflower",1],
					["corn",1],
					["bean",1],
					["cotton",1],
					["olive",1]
			]
	],
   
	["wheat", 245, 210, 285, 2, 1,
			[
					["sunflower",1],
					["corn",1],
					["bean",1],
					["cotton",1],
					["pumpkin",1],
					["olive",1]
			]
	],
   
	["cotton", 245, 210, 285, 2, 1,
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

	["turtle", 9575, 9375, 9175, 8, 4,
			[
					["marijuana",1],
					["cocainep",1],
					["heroinp",1],
					["schwarzpulver",1]
			]
	],

	["cocainep", 4675, 4135, 5215, 8, 4,
			[
					["marijuana",1],
					["turtle",1],
					["heroinp",1],
					["schwarzpulver",1]
			]
	],
   
	["marijuana", 4350, 3800, 4900, 8, 4,
			[
					["turtle",1],
					["cocainep",1],
					["heroinp",1],
					["schwarzpulver",1]
			]
	],
   
	["heroinp", 4505, 3955, 5055, 8, 4,
			[
					["marijuana",1],
					["turtle",1],
					["cocainep",1],
					["schwarzpulver",1]
			]
	],
   
	["schwarzpulver", 4600, 4150, 5050, 8, 4,
			[
					["marijuana",1],
					["turtle",1],
					["cocainep",1],
					["heroinp",1]
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