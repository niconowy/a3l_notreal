#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_medSiren_active = false;
life_ipdSiren_active = false;
life_umbrellus_active = false;
life_umbrellus2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 5; //Scaled in seconds - nicht unter 5 setzen, sonst spackt das spawnen rum (spawninsel)
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
Life_request_timer = false;
life_god = false; //Add this
life_frozen = false; //And this
life_markers = false; //Finally this
life_adacMarker = [];
life_adac_request = false;
life_married = "";
life_earplugs = false;

delay_pickaxe = false; // Left Windows-Spam Pickaxe Fix

lrl_buy = true;
lrl_sell = true;
lrl_knockedOut = false;
lrl_spamcounter = 0;
//lrl_copLeitstelle = false;
lrl_emsLeitstelle = false;
lrl_noWeapons = ["","Rangefinder","Binocular","Radar_Gun","A3L_sign","A3L_sign2","Tv_Camera","gign_shield"];
lrl_coinsCheck = false;
lrl_coinsDelay = false;
lrl_version = "lakeside-reallifeDE_modinfo_ver_150811";


//Persistent Saving
__CONST__(life_save_civ,TRUE);  //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,3500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;

life_thirst = 100;
life_hunger = 100;
life_intox = 0.00;

__CONST__(life_paycheck_period,5); //Five minutes

doofi_b4r5 = 0;

__CONST__(life_impound_car,3000);
__CONST__(life_impound_boat,1000);
__CONST__(life_impound_air,3000);

life_istazed = false;
life_my_gang = ObjNull;
life_smartphoneTarget = ObjNull;

life_vehicles = [];
bank_robber = [];

lrl_noAction = if((life_istazed) OR (lrl_knockedOut) OR (life_knockout)) then {true} else {false}; //Keine 100 Abfragen mehr im skript

switch (playerSide) do
{
	case west: 
	{
		man_ey_b4nK = 25000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	case civilian: 
	{
		man_ey_b4nK = 17500; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	
	case independent: {
		man_ey_b4nK = 15000;
		life_paycheck = 4500;
	};

	case east:
	{
		man_ey_b4nK = 15000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_axt",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_bohrmaschine",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wheat",
	"life_inv_sunflower",
	"life_inv_corn",
	"life_inv_bean",
	"life_inv_cotton",
	"life_inv_olive",
	"life_inv_opium",
	"life_inv_cannabis",
	"life_inv_pumpkin",
	"life_inv_wheatseeds",
	"life_inv_sunflowerseeds",
	"life_inv_cornseeds",
	"life_inv_beanseeds",
	"life_inv_cottonseeds",
	"life_inv_oliveseeds",
	"life_inv_opiumseeds",
	"life_inv_cokeseeds",
	"life_inv_cannabisseeds",
	"life_inv_pumpkinseeds",
	"life_inv_rawgoatmeat",
	"life_inv_rawchicken",
	"life_inv_rawsheepmeat",
	"life_inv_rawrabbit",
	"life_inv_zoobeer",
	"life_inv_RoadCone",
	"life_inv_RoadConeStrip",
	"life_inv_RoadConeB",
	"life_inv_RoadConeStripB",
	"life_inv_RoadBlockWood",
	"life_inv_RoadBlockConc",
	"life_inv_RoadBlockRebel",
	"life_inv_BarGate",
	"life_inv_ziptie",
	"life_inv_cigarette",
	"life_inv_raxsrum",
	"life_inv_weddingring",
	"life_inv_schwarzpulver",
	"life_inv_kohle",
	"life_inv_elektroteile",
	"life_inv_grillkohle",
	"life_inv_laminat",
	"life_inv_holz",
	"life_inv_presseformular",
	"life_inv_taxischeinformular",
	"life_inv_nothammer",
	"life_inv_mehl",
	"life_inv_brotteig",
	"life_inv_keks",
	"life_inv_pizzabrot",
	"life_inv_pizza",
	"life_inv_permdriverformular",
	"life_inv_sos",
	"life_inv_blaulicht"
];

life_8_b4lls = 
[
	"76561197962238371",
	"76561198082967169",
	"76561198016104237",
	"76561197993477534",
	"76561197999595613",
	"76561198136538321",
	"76561198077232569",
	"76561198042459096",
	"76561198118503333",
	"76561198015139307",
	"76561198013153296",
	"76561197961565171", //Die Bobneill
	"76561198006371492", //Dani Sahne
	"76561198092410799" //Croker
	
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
//Cop Licenses
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],

//Medic Licenses
	["license_med_air","med"],

//Civilian Vehicular & Diving
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_boat","civ"],
	["license_civ_truck","civ"],
	["license_civ_dive","civ"],

//Civilian Weapons
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],

//Civilian Processing
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_oil","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_civ_elektriker","civ"],
	["license_civ_grillmeister","civ"],
	["license_civ_schreiner","civ"],
	["license_civ_mehlmahl","civ"],

//Civilian Other
	["license_civ_home","civ"],
	["license_civ_presse","civ"],
	["license_civ_taxischein","civ"],
	["license_civ_permdriver","civ"],
	["license_civ_fischerei","civ"] //Nur zum Verkaufen von Fisch

];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];

//[shortVar,reward]
life_illegal_items = [
	["schwarzpulver",4250],
	["spikeStrip",36500],
	["opium",2050],
	["heroinp",4780],
	["cocaine",2250],
	["cocainep",5560],
	["cannabis",975],
	["marijuana",4320],
	["turtle",8000],
	["blastingcharge",125000],
	["boltcutter",12000],
	["nothammer",7520],
	["lockpick",2250],
	["sos",1250],
	["blaulicht",1250],
	["bohrmaschine",3000]
];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinp",4505],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",4490],
	["turtle",9000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",4350],
	["tbacon",25],
	["lockpick",300],
	["pickaxe",750],
	["axt",750],
	["redgull",200],
	["peach",55],
	["cocaine",2250],
	["cocainep",4675],
	["diamondc",4845],
	["iron_r",4150],
	["copper_r",3075],
	["salt_r",1225],
	["glass",2155],
	["fuelF",1750],
	["fuelF",200],
	["elektroteile",4000],
	["laminat",2895],
	["grillkohle",1900],
	["schwarzpulver",4600],

	["wheat",255],
	["sunflower",316],
	["corn",860],
	["bean",336],
	["cotton",255],
	["olive",491],
	["opium",1000],
	["cannabis",1000],
	["pumpkin",825],

	["wheat seed",10],
	["sunflower seed",10],
	["corn seed",10],
	["bean seed",10],
	["cotton seed",10],
	["olive seed",10],
	["opium seed",150],
	["coke seed",150],
	["cannabis seed",150],
	["pumpkin seed",50],

	["raw goat meat",500],
	["raw chicken",700],
	["raw sheep meat",500],
	["raw rabbit",700],
	["mehl",100],
	["brotteig",300],

	["spikeStrip",1200],
	["cement",3600],
	["goldbar",95000], 

	["zoobeer",25], 
	["BarGate",500],
	["RoadBlockConc",1000],
	["RoadBlockWood",750],
	["RoadCone",50],
	["RoadConeStrip",250],
	["RoadConeB",100],
	["RoadConeStripB",500],
	["cigarette",5],
	["Rax's Rum",25],
	["weddingring",1000],
	["presseformular",1250],
	["nothammer",1500],
	["keks",1],
	["pizzabrot",25],
	["pizza",35],
	["permdriverformular",60000],
	["sos",1000],
	["blaulicht",1250]
];
__CONST__(sell_array,sell_array);

buy_array =
[
	["apple",65],
	["rabbit",75],
	["water",10],

	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",850],
	["pickaxe",1200],
	["axt",1200],
	["redgull",1500],
	["fuelF",7500],
	["fuelE",1000],

	["wheat seed",25],
	["sunflower seed",25],
	["corn seed",25],
	["bean seed",25],
	["cotton seed",25],
	["olive seed",25],
	["opium seed",400],
	["cannabis seed",400],
	["pumpkin seed",150],
	["coke seed",350],

	["raw goat meat",600],
	["raw chicken",800],
	["raw sheep meat",600],
	["raw rabbit",800],

	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],

	["zoobeer",25],
	["BarGate",500],
	["RoadBlockConc",1000],
	["RoadBlockWood",750],
	["RoadCone",50],
	["RoadConeStrip",250],
	["RoadConeB",100],
	["RoadConeStripB",500],
	["cigarette",25],
	["Rax's Rum",50],

	["weddingring",25000],
	["presseformular",10000],
	["taxischeinformular",10000],
	["nothammer",5700],
	["keks",5],
	["pizzabrot",80],
	["pizza",110],
	["permdriverformular",100000],
	["sos",3500],
	["blaulicht",5000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",0],
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["16Rnd_9x21_Mag",0],
	["20Rnd_556x45_UW_mag",0],
	["ItemMap",0],
	["ItemCompass",0],
	["Chemlight_blue",0],
	["Chemlight_yellow",0],
	["Chemlight_green",0],
	["Chemlight_red",0],
	["hgun_Rook40_F",0],
	["arifle_Katiba_F",0],
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["optic_ACO_grn",0],
	["acc_flashlight",0],
	["srifle_EBR_F",0],
	["arifle_TRG21_F",0],
	["optic_MRCO",0],
	["optic_Aco",0],
	["arifle_MX_F",0],
	["arifle_MXC_F",0],
	["arifle_MXM_F",0],
	["MineDetector",0],
	["optic_Holosight",0],
	["acc_pointer_IR",0],
	["arifle_TRG20_F",0],
	["SMG_01_F",0],
	["arifle_Mk20C_F",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["I_Heli_Transport_02_F",5000],
	["C_SUV_01_F",5000],
	["shounka_a3_mantgs",9500],
	["shounka_a3_suburbangign",20000],
	["shounka_a3_brinks_noir",20000],
	["cl3_enduro_yellow",8000],["cl3_enduro_black",8000],["cl3_enduro_blue",8000],["cl3_enduro_aqua",8000],["cl3_enduro_babypink",8000],["cl3_enduro_red",8000],["cl3_enduro_dark_green",8000],
	["cl3_chopper_blue",8000],["cl3_chopper_green",8000],["cl3_chopper_red",8000],
	["cl3_xr_1000_yellow",8000],["cl3_xr_1000_black",8000],["cl3_xr_1000_babypink",8000],["cl3_xr_1000_red",8000],["cl3_xr_1000_lime",8000],["cl3_xr_1000_flame",8000],["cl3_xr_1000_police",4000],["cl3_xr_1000_emt",4000],
	["wirk_h3_limo",40000],
	["Nhz_audia8limo",35000],
	["DAR_SWATPolice",15000],
	["ALFR_GeK_Panamera",18000],
	["SAL_AudiCiv", 6000], ["SAL_AudiCivRed", 6000], ["SAL_AudiCivSilver", 6000], ["SAL_AudiCivBlack", 6000],
	["RDS_S1203_Civ_01", 2500], ["RDS_Lada_Civ_01", 2500], ["RDS_Lada_Civ_02", 2500], ["RDS_Lada_Civ_03", 2500], ["RDS_Lada_Civ_04", 2500], ["RDS_Golf4_Civ_01", 2500], 
	["ALFR_GeK_Pagani_Zonda",18000],
	["wirk_cayenne",15000],
	["DAR_M3CivGrey",10500],["DAR_M3CivBlack",10500],["DAR_M3CivWhite",10500],
	["ALFR_GeK_Volvo_FH16_2012",12500],
	["ALFR_GeK_MF1",18000],
	["C_Rubberboat",1500],["C_Boat_Civil_01_F",8750],["B_Boat_Transport_01_F",375],["C_Boat_Civil_01_police_F",1000],["B_SDV_01_F",5000],
	["C_Kart_01_Blu_F",1250],["C_Kart_01_Fuel_F",1250],["C_Kart_01_Red_F",1250],["C_Kart_01_Vrana_F",1250],
	["A3L_AmberLamps",1250],["A3L_Laddertruck",2000],["mercedes_atego_pompier_ingame",2000],
	["A3L_AMC",6800],["A3L_AMXRed",6800],["A3L_AMXWhite",6800],["A3L_AMXBlue",6800],["A3L_AMXGL",6800],
	["A3L_VolvoS60RBlack",6800],["A3L_VolvoS60Rred",6800],
	["S_Skyline_Red",7200],["S_Skyline_Blue",7200],["S_Skyline_Black",7200],["S_Skyline_Yellow",7200],["S_Skyline_Purple",7200],["S_Skyline_White",7200],
	["A3L_Camaro",12500],
	["A3L_Taurus",1750],["A3L_TaurusBlack",1750],["A3L_TaurusBlue",1750],["A3L_TaurusRed",1750],["A3L_TaurusWhite",1750],
	["A3L_GrandCaravan",3500],["A3L_GrandCaravanBlk",3500],["A3L_GrandCaravanBlue",3500],["A3L_GrandCaravanGreen",3500],["A3L_GrandCaravanRed",3500],["A3L_GrandCaravanPurple",3500],
	["A3L_Challenger",4750],["A3L_ChallengerGreen",4750],["A3L_ChallengerRed",4750],["A3L_ChallengerWhite",4750],["A3L_ChallengerBlack",4750],["A3L_ChallengerBlue",4750],
	["Jonzie_Viper",22500],
	["A3L_PuntoRed",600],["A3L_PuntoBlack",600],["A3L_PuntoWhite",600],["A3L_PuntoGrey",600],
	["A3L_JeepWhiteBlack",650],["A3L_JeepGreenBlack",650],["A3L_JeepRedTan",650],["A3L_JeepRedBlack",650],["A3L_JeepGrayBlack",650],
	["A3L_VolksWagenGolfGTired",900],["A3L_VolksWagenGolfGTiblack",900],["A3L_VolksWagenGolfGTiblue",900],["A3L_VolksWagenGolfGTiwhite",900],
	["A3L_F350Black",3500],["A3L_F350Blue",3500],["A3L_F350Red",3500],["A3L_F350White",3500],
	["A3L_Dumptruck",10000],["C_Van_01_box_F",4500],["C_Van_01_transport_F",2000],
	["A3L_GrandCaravanUC",1250],["A3L_GrandCaravanUCBlack",1250],
	["A3L_TaurusFPBLBPD",1250],["A3L_TaurusFPBLBCSO",1250],["A3L_TaurusUCBlack",1250],
	["A3L_TaurusUCGrey",2500],["A3L_TaurusUCWhite",2500],["A3L_TaurusUCBlue",2500],["A3L_TaurusUCRed",2500],
	["A3L_CVPIFPBLBPD",2250],["A3L_CVPIFPBLBCSO",2250],["A3L_CVPIFPBLBFG",2250],
	["A3L_jailBus",2500],
	["A3L_Suburban",2750],["A3L_SuburbanCSO",2750],["A3L_SuburbanFG",2750],
	["cl3_e63_amg_white",8000],["cl3_e63_amg_purple",8000],["cl3_e63_amg_navy_blue",8000],["cl3_e63_amg_lime",8000],["cl3_e63_amg_light_yellow",8000],
	["cl3_e63_amg_light_blue",8000],["cl3_e63_amg_grey",8000],["cl3_e63_amg_gold",8000],["cl3_e63_amg_burgundy",8000],["cl3_e63_amg_black",8000],["cl3_e63_amg_camo",8000],
	["cl3_e60_m5_white",7500],["cl3_e60_m5_purple",7500],["cl3_e60_m5_navy_blue",7500],["cl3_e60_m5_lime",7500],["cl3_e60_m5_light_yellow",7500],
	["cl3_e60_m5_light_blue",7500],["cl3_e60_m5_grey",7500],["cl3_e60_m5_gold",7500],["cl3_e60_m5_burgundy",7500],["cl3_e60_m5_black",7500],["cl3_e60_m5_camo",7500],
	["cl3_z4_2008_white",8000],["cl3_z4_2008_purple",8000],["cl3_z4_2008_navy_blue",8000],["cl3_z4_2008_lime",8000],["cl3_z4_2008_light_yellow",8000],
	["cl3_z4_2008_light_blue",8000],["cl3_z4_2008_grey",8000],["cl3_z4_2008_burgundy",8000],["cl3_z4_2008_black",8000],["cl3_z4_2008_camo",8000],
	["S_PorscheRS_Black",16000],["S_PorscheRS_Yellow",16000],["S_PorscheRS_White",16000],
	["cl3_carrera_gt_white",18000],["cl3_carrera_gt_purple",18000],["cl3_carrera_gt_navy_blue",18000],["cl3_carrera_gt_lime",18000],["cl3_carrera_gt_light_yellow",18000],
	["cl3_carrera_gt_light_blue",18000],["cl3_carrera_gt_grey",18000],["cl3_carrera_gt_gold",18000],["cl3_carrera_gt_burgundy",18000],["cl3_carrera_gt_black",18000],["cl3_carrera_gt_camo",18000],
	["cl3_insignia_white",5000],["cl3_insignia_purple",5000],["cl3_insignia_navy_blue",5000],["cl3_insignia_lime",5000],["cl3_insignia_light_yellow",5000],
	["cl3_insignia_light_blue",5000],["cl3_insignia_grey",5000],["cl3_insignia_gold",5000],["cl3_insignia_burgundy",5000],["cl3_insignia_black",5000],["cl3_insignia_camo",5000],
	["cl3_golf_mk2_white",1250],["cl3_golf_mk2_purple",1250],["cl3_golf_mk2_navy_blue",1250],["cl3_golf_mk2_lime",1250],["cl3_golf_mk2_light_yellow",1250],
	["cl3_golf_mk2_light_blue",1250],["cl3_golf_mk2_grey",1250],["cl3_golf_mk2_gold",1250],["cl3_golf_mk2_burgundy",1250],["cl3_golf_mk2_black",1250],["cl3_golf_mk2_camo",1250],
	["cl3_polo_gti_white",1750],["cl3_polo_gti_purple",1750],["cl3_polo_gti_navy_blue",1750],["cl3_polo_gti_lime",1750],["cl3_polo_gti_light_yellow",1750],
	["cl3_polo_gti_light_blue",1750],["cl3_polo_gti_grey",1750],["cl3_polo_gti_gold",1750],["cl3_polo_gti_burgundy",1750],["cl3_polo_gti_black",1750],["cl3_polo_gti_camo",1750],
	["cl3_reventon_white",18000],["cl3_reventon_purple",18000],["cl3_reventon_navy_blue",18000],["cl3_reventon_lime",18000],["cl3_reventon_light_yellow",18000],
	["cl3_reventon_light_blue",18000],["cl3_reventon_grey",18000],["cl3_reventon_gold",18000],["cl3_reventon_burgundy",18000],["cl3_reventon_black",18000],
	["cl3_reventon_2tone2",18000],["cl3_reventon_2tone3",18000],["cl3_reventon_2tone4",18000],["cl3_reventon_2tone5",18000],["cl3_reventon_flame1",18000],["cl3_reventon_camo",18000],
	["cl3_murcielago_white",18000],["cl3_murcielago_purple",18000],["cl3_murcielago_navy_blue",18000],["cl3_murcielago_lime",18000],["cl3_murcielago_light_yellow",18000],
	["cl3_murcielago_light_blue",18000],["cl3_murcielago_grey",18000],["cl3_murcielago_gold",18000],["cl3_murcielago_burgundy",18000],["cl3_murcielago_black",18000],
	["cl3_murcielago_2tone2",18000],["cl3_murcielago_2tone3",18000],["cl3_murcielago_2tone4",18000],["cl3_murcielago_2tone5",18000],["cl3_murcielago_flame1",18000],["cl3_murcielago_camo",18000],
	["cl3_lamborghini_gt1_white",18000],["cl3_lamborghini_gt1_purple",18000],["cl3_lamborghini_gt1_navy_blue",18000],["cl3_lamborghini_gt1_lime",18000],["cl3_lamborghini_gt1_light_yellow",18000],
	["cl3_lamborghini_gt1_light_blue",18000],["cl3_lamborghini_gt1_grey",18000],["cl3_lamborghini_gt1_gold",18000],["cl3_lamborghini_gt1_burgundy",18000],["cl3_lamborghini_gt1_black",18000],
	["cl3_dbs_volante_white",10000],["cl3_dbs_volante_purple",10000],["cl3_dbs_volante_navy_blue",10000],["cl3_dbs_volante_lime",10000],["cl3_dbs_volante_light_yellow",10000],
	["cl3_dbs_volante_light_blue",10000],["cl3_dbs_volante_grey",10000],["cl3_dbs_volante_gold",10000],["cl3_dbs_volante_burgundy",10000],["cl3_dbs_volante_black",10000],
	["cl3_dbs_volante_flame1",10000],["cl3_dbs_volante_camo",10000],
	["S_Vantage_Red",9000],["S_Vantage_Blue",9000],["S_Vantage_Black",9000],["S_Vantage_Yellow",9000],["S_Vantage_LightBlue",9000],["S_Vantage_Purple",9000],["S_Vantage_White",9000],
	["IVORY_R8",20000],
	["ivory_c",20000],["ivory_c_livery1",20000],["ivory_c_livery2",20000],["ivory_c_livery3",20000],["ivory_c_livery4",20000],
	["ivory_lfa",18000],["ivory_lfa_sport1",18000],["ivory_lfa_sport2",18000],["ivory_lfa_sport3",18000],["ivory_lfa_sport4",18000],["ivory_lfa_sport5",18000],
	["Mrshounka_a3_gtr_civ_noir",18000],["Mrshounka_a3_gtr_civ_bleu",18000],["Mrshounka_a3_gtr_civ_orange",18000],["Mrshounka_a3_gtr_civ_grau",18000],["Mrshounka_a3_gtr_civ_gruen",18000],["Mrshounka_a3_gtr_civ_violet",18000],
	["shounka_a3_rs5_civ_noir",18000],["shounka_a3_rs5_civ_bleufonce",18000],["shounka_a3_rs5_civ_rouge",18000],["shounka_a3_rs5_civ_jaune",18000],["shounka_a3_rs5_civ_rose",18000],["shounka_a3_rs5_civ_grise",18000],["shounka_a3_rs5_civ_violet",18000],["shounka_a3_rs5_civ_orange",18000],
	["mrshounka_huracan_c_noir",20000],["mrshounka_huracan_c_bleufonce",20000],["mrshounka_huracan_c_rouge",20000],["mrshounka_huracan_c_jaune",20000],["mrshounka_huracan_c_rose",20000],["mrshounka_huracan_c_grise",20000],["mrshounka_huracan_c_violet",20000],["mrshounka_huracan_c_orange",20000],
	["Mrshounka_veneno_c_noir",20000],["Mrshounka_veneno_c_bleu",20000],["Mrshounka_veneno_c_jaune",20000],["Mrshounka_veneno_c_grau",20000],["Mrshounka_veneno_c_rot",20000],["Mrshounka_veneno_c_gruen",20000],["Mrshounka_veneno_c_violet",20000],
	["Mrshounka_bmwm1_civ_noir",18000],["Mrshounka_bmwm1_civ_bleufonce",18000],["Mrshounka_bmwm1_civ_rouge",18000],["Mrshounka_bmwm1_civ_jaune",18000],["Mrshounka_bmwm1_civ_rose",18000],["Mrshounka_bmwm1_civ_grise",18000],["Mrshounka_bmwm1_civ_violet",18000],["Mrshounka_bmwm1_civ_orange",18000],
	["Mrshounka_mustang_mat",18000],["Mrshounka_mustang_noir",18000],["Mrshounka_mustang_mat_n",18000],["Mrshounka_mustang_bleufonce",18000],["Mrshounka_mustang_mat_b",18000],["Mrshounka_mustang_rouge",18000],["Mrshounka_mustang_jaune",18000],["Mrshounka_mustang_rose",18000],["Mrshounka_mustang_grise",18000],["Mrshounka_mustang_violet",18000],["Mrshounka_mustang_orange",18000],
	["shounka_a3_renaultmagnum_f",12500],
	["cl3_r8_spyder_white",18000],["cl3_r8_spyder_purple",18000],["cl3_r8_spyder_navy_blue",18000],["cl3_r8_spyder_lime",18000],["cl3_r8_spyder_light_yellow",18000],
	["cl3_r8_spyder_light_blue",18000],["cl3_r8_spyder_grey",18000],["cl3_r8_spyder_gold",18000],["cl3_r8_spyder_burgundy",18000],["cl3_r8_spyder_black",18000],
	["cl3_r8_spyder_2tone2",18000],["cl3_r8_spyder_2tone3",18000],["cl3_r8_spyder_2tone4",18000],["cl3_r8_spyder_2tone5",18000],["cl3_r8_spyder_flame1",18000],["cl3_r8_spyder_camo",18000],
	["cl3_458_white",18000],["cl3_458_purple",18000],["cl3_458_navy_blue",18000],["cl3_458_lime",18000],["cl3_458_light_yellow",18000],
	["cl3_458_light_blue",18000],["cl3_458_grey",18000],["cl3_458_gold",18000],["cl3_458_burgundy",18000],["cl3_458_black",18000],
	["cl3_458_2tone2",18000],["cl3_458_2tone3",18000],["cl3_458_2tone4",18000],["cl3_458_2tone5",18000],["cl3_458_flame1",18000],["cl3_458_camo",18000],
	["Jonzie_Mini_Cooper_R_spec",15000],["Jonzie_Mini_Cooper",100],
	["cl3_arielatom_race_white",20000],["cl3_arielatom_race_purple",20000],["cl3_arielatom_race_navy_blue",20000],["cl3_arielatom_race_lime",20000],["cl3_arielatom_race_light_yellow",20000],
	["cl3_arielatom_race_light_blue",20000],["cl3_arielatom_race_grey",20000],["cl3_arielatom_race_gold",20000],["cl3_arielatom_race_burgundy",20000],["cl3_arielatom_race_black",20000],["cl3_arielatom_race_camo",20000],
	["cl3_veyron_blk_wht",20000],["cl3_veyron_lblue_dblue",20000],["cl3_veyron_lblue_lblue",20000],["cl3_veyron_brn_blk",20000],
	["Mrshounka_bmwm6_noir",20000],["Mrshounka_bmwm6_bleufonce",20000],["Mrshounka_bmwm6_rouge",20000],["Mrshounka_bmwm6_jaune",20000],["Mrshounka_bmwm6_rose",20000],["Mrshounka_bmwm6_grise",20000],["Mrshounka_bmwm6_violet",20000],["Mrshounka_bmwm6_orange",20000],
	["Mrshounka_megane_rs_2015_noir",8000],["Mrshounka_megane_rs_2015_bleufonce",8000],["Mrshounka_megane_rs_2015_rouge",8000],["Mrshounka_megane_rs_2015_jaune",8000],["Mrshounka_megane_rs_2015_rose",8000],["Mrshounka_megane_rs_2015_grise",8000],["Mrshounka_megane_rs_2015_violet",8000],["Mrshounka_megane_rs_2015_orange",8000],
	/*["Mrshounka_Volkswagen_Touareg_noir",10000],["Mrshounka_Volkswagen_Touareg_bleufonce",10000],["Mrshounka_Volkswagen_Touareg_rouge",10000],["Mrshounka_Volkswagen_Touareg_jaune",10000],["Mrshounka_Volkswagen_Touareg_rose",10000],["Mrshounka_Volkswagen_Touareg_grise",10000],["Mrshounka_Volkswagen_Touareg_violet",10000],["Mrshounka_Volkswagen_Touareg_orange",10000],*/ //Buggy
	["Mrshounka_hummer_civ_noir",13200],["Mrshounka_hummer_civ_bleufonce",13200],["Mrshounka_hummer_civ_rouge",13200],["Mrshounka_hummer_civ_jaune",13200],["Mrshounka_hummer_civ_rose",13200],["Mrshounka_hummer_civ_grise",13200],["Mrshounka_hummer_civ_violet",13200],["Mrshounka_hummer_civ_orange",13200],
	["shounka_a3_audiq7_v2_gendarmerie",2250],
	/*["Mrshounka_Volkswagen_Touareg_police_police",2250],*/ // Buggy
	["Mrshounka_rs_2015_g",2250],
	["A3L_CVPILBFD",500],
	["Jonzie_Ambulance",1250],
	["cl3_dodge_charger_emt",5000],
	["O_Heli_Transport_04_medevac_F",7500],
	["A3L_RX7_Blue",6400],["A3L_RX7_Red",6400],["A3L_RX7_White",6400],["A3L_RX7_Black",6400],
	["S_McLarenP1_Black",40000],["S_McLarenP1_Blue",40000],["S_McLarenP1_Orange",40000],["S_McLarenP1_White",40000],["S_McLarenP1_Yellow",40000],["S_McLarenP1_Silver",40000],
	["A3L_CVWhite",1500],["A3L_CVBlack",1500],["A3L_CVGrey",1500],["A3L_CVRed",1500],["A3L_CVPink",1500],["A3L_CVBlue",1500],
	["cl3_dodge_charger_f_white",5500],["cl3_dodge_charger_f_purple",5500],["cl3_dodge_charger_f_blue",5500],["cl3_dodge_charger_f_lime",5500],["cl3_dodge_charger_f_yellow",5500],
	["cl3_dodge_charger_f_grey",5500],["cl3_dodge_charger_f_black",5500],["cl3_dodge_charger_f_darkgreen",5500],["cl3_dodge_charger_f_darkred",5500],["cl3_dodge_charger_f_orange",5500],["cl3_dodge_charger_f_camo",5500],["cl3_dodge_charger_f_camourban",5500],
	["cl3_s1203_blue",250],["cl3_lada_red",275],["cl3_lada_white",275],["cl3_volha_black",300],["cl3_volha_grey",300],
	["cl3_suv_black",3000],["cl3_suv_taxi",3750],
	["cl3_civic_vti_white",2500],["cl3_civic_vti_purple",2500],["cl3_civic_vti_navy_blue",2500],["cl3_civic_vti_lime",2500],["cl3_civic_vti_light_yellow",2500],
	["cl3_civic_vti_light_blue",2500],["cl3_civic_vti_grey",2500],["cl3_civic_vti_gold",2500],["cl3_civic_vti_burgundy",2500],["cl3_civic_vti_black",2500],["cl3_civic_vti_camo",2500],
	["cl3_range_rover_white",1000],["cl3_range_rover_purple",1000],["cl3_range_rover_navy_blue",1000],["cl3_range_rover_lime",1000],["cl3_range_rover_light_yellow",1000],
	["cl3_range_rover_light_blue",1000],["cl3_range_rover_grey",1000],["cl3_range_rover_gold",1000],["cl3_range_rover_burgundy",1000],["cl3_range_rover_black",1000],["cl3_range_rover_camo",1000],
	["A3L_Bus",3500],["A3L_SchoolBus",4250],["A3L_Towtruck",2500],
	["GNT_C185F",50000],["GNT_C185",50000],
	["IVORY_CRJ200_1",160000],
	["IVORY_YAK42D_1",200000],
	["DAR_ImpalaPolice",375],
	["DAR_TaurusPolice",1250],
	["DAR_ExplorerPolice",1250],
	["DAR_ExplorerPoliceStealth",1250],
	["DAR_CVPIPolice",2250],
	["DAR_TahoePolice",2750],
	["A3L_EvoXFPBLBPD",3500],
	["cl3_dodge_charger_k9",3000],
	["DAR_CVPIAuxiliary",2250],
	["A3L_EvoXFPBLBSO",3500],["A3L_EvoXFPBLBMED",3500],["A3l_evoxADAC",3500],
	["AM_2015C_White",8500],["AM_2015C_Black",8500],["AM_2015C_blue",8500],["AM_2015C_Green",8500],["AM_2015C_Grey",8500],["AM_2015C_Red",8500],["AM_2015C_Orange",8500],["charger_st",3500],["charger_sh",3500],["charger_lvpd",3500],["charger_ems",3500],["charger_umw",3500],["charger_umb",3500],
	["cl3_dodge_charger_patrol",3000],
	["A3L_CVPIUC",2500],["A3L_CVPIUCWhite",2500],["A3L_CVPIUCBlack",2500],["A3L_CVPIGrey",2500],["A3L_CVPIUCRed",2500],["A3L_CVPIUCPink",2500],["A3L_CVPIUCBlue",2500],["A3L_CVLac",2500],
	["A3L_ChargerUC",3000],["A3L_ChargerUCWhite",3000],["A3L_ChargerLB",3000],
	["DAR_TahoePoliceDet",2750],
	["A3L_CVPIFPBLBHP",2250],["A3L_CVPIFPBLBSM",2250],["A3L_CVPIFPBLBSP2",2250],
	["ivory_rev_fbi",6000],["ivory_rev_fbi2",6000],["ivory_rev_fbi3",6000],["ivory_rev_fbi4",6000],["ivory_rev_fbi5",6000],["ivory_rev_fbi6",6000],["ivory_rev_fbi7",6000],["ivory_rev_fbi8",6000],["ivory_rev_fbi9",6000],["ivory_rev_fbi10",6000],["ivory_rev_fbi11",6000],
	["IVORY_REV",6000],
	["ivory_rev_black",15000],["ivory_rev_blue",15000],["ivory_rev_lime",15000],["ivory_rev_pink",15000],["ivory_rev_rot",15000],["ivory_rev_turkis",15000],["ivory_rev_orange",15000],["ivory_rev_sport1",15000],["ivory_rev_sport2",15000],["ivory_rev_sport3",15000],["ivory_rev_sport4",15000],
	["I_Heli_light_03_unarmed_F",5000],
	["B_Heli_Transport_01_F",10000],
	["B_Heli_Transport_03_unarmed_F",15000],
	["O_Heli_Transport_04_F",15000],
	["O_Heli_Transport_04_covered_F",15000],
	["IVORY_T6A_1",15000],
	["A3L_Ship",35000],["A3L_Jetski",7500],["A3L_Jetski_yellow",7500],
	
	["IVORY_PRIUS",5000],["C_Heli_Light_01_civil_F",70000],["B_Heli_Light_01_F",70000],["O_Heli_Light_02_unarmed_F",70000],["ivory_b206_rescue",70000],["ivory_b206",70000],
	["ivory_b206_news",70000],["ivory_b206_police",70000],["EC635_Unarmed_BW",15000],["EC635_ADAC",15000],["EC635_SAR",15000],["EC635_Unarmed_CSAT",15000],["IVORY_BELL512_POLICE",70000],["IVORY_BELL512",70000],["IVORY_BELL512_RESCUE",70000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["I_Heli_Transport_02_F",50000],
	["C_SUV_01_F",1000],
	["shounka_a3_mantgs",45800],
	["shounka_a3_suburbangign",95000],
	["shounka_a3_brinks_noir",95000],
	["cl3_enduro_yellow",125000],["cl3_enduro_black",125000],["cl3_enduro_blue",125000],["cl3_enduro_aqua",125000],["cl3_enduro_babypink",125000],["cl3_enduro_red",125000],["cl3_enduro_dark_green",125000],
	["cl3_chopper_blue",125000],["cl3_chopper_green",125000],["cl3_chopper_red",125000],
	["cl3_xr_1000_yellow",125000],["cl3_xr_1000_black",125000],["cl3_xr_1000_babypink",125000],["cl3_xr_1000_red",125000],["cl3_xr_1000_lime",125000],["cl3_xr_1000_flame",125000],["cl3_xr_1000_police",50000],["cl3_xr_1000_emt",50000],
	["wirk_h3_limo",2500000],
	["Nhz_audia8limo",2000000],
	["DAR_SWATPolice",35000],
	["ALFR_GeK_Panamera",412500],
	["SAL_AudiCiv", 26000], ["SAL_AudiCivRed", 26000], ["SAL_AudiCivSilver", 26000], ["SAL_AudiCivBlack", 26000],
	["RDS_S1203_Civ_01", 12500], ["RDS_Lada_Civ_01", 12500], ["RDS_Lada_Civ_02", 12500], ["RDS_Lada_Civ_03", 12500], ["RDS_Lada_Civ_04", 12500], ["RDS_Golf4_Civ_01", 12500], 
	["ALFR_GeK_Pagani_Zonda",537500],
	["wirk_cayenne",275000],
	["DAR_M3CivGrey",67500],["DAR_M3CivBlack",67500],["DAR_M3CivWhite",67500],
	["ALFR_GeK_MF1",477500],
	["ALFR_GeK_Volvo_FH16_2012",175000],
	["C_Rubberboat",15000],["C_Boat_Civil_01_F",87500],["B_Boat_Transport_01_F",3750],["C_Boat_Civil_01_police_F",10000],["B_SDV_01_F",50000],
	["C_Kart_01_Blu_F",12500],["C_Kart_01_Fuel_F",12500],["C_Kart_01_Red_F",12500],["C_Kart_01_Vrana_F",12500],
	["A3L_AmberLamps",12500],["A3L_Laddertruck",20000],["mercedes_atego_pompier_ingame",20000],
	["A3L_AMC",68000],["A3L_AMXRed",68000],["A3L_AMXWhite",68000],["A3L_AMXBlue",68000],["A3L_AMXGL",68000],
	["A3L_VolvoS60RBlack",68000],["A3L_VolvoS60Rred",68000],
	["S_Skyline_Red",72000],["S_Skyline_Blue",72000],["S_Skyline_Black",72000],["S_Skyline_Yellow",72000],["S_Skyline_Purple",72000],["S_Skyline_White",72000],
	["A3L_Camaro",12500],
	["A3L_Taurus",17500],["A3L_TaurusBlack",17500],["A3L_TaurusBlue",17500],["A3L_TaurusRed",17500],["A3L_TaurusWhite",17500],
	["A3L_GrandCaravan",35000],["A3L_GrandCaravanBlk",35000],["A3L_GrandCaravanBlue",35000],["A3L_GrandCaravanGreen",35000],["A3L_GrandCaravanRed",35000],["A3L_GrandCaravanPurple",35000],
	["A3L_Challenger",47500],["A3L_ChallengerGreen",47500],["A3L_ChallengerRed",47500],["A3L_ChallengerWhite",47500],["A3L_ChallengerBlack",47500],["A3L_ChallengerBlue",47500],
	["Jonzie_Viper",225000],
	["A3L_PuntoRed",6000],["A3L_PuntoBlack",6000],["A3L_PuntoWhite",6000],["A3L_PuntoGrey",6000],
	["A3L_JeepWhiteBlack",6500],["A3L_JeepGreenBlack",6500],["A3L_JeepRedTan",6500],["A3L_JeepRedBlack",6500],["A3L_JeepGrayBlack",6500],
	["A3L_VolksWagenGolfGTired",9000],["A3L_VolksWagenGolfGTiblack",9000],["A3L_VolksWagenGolfGTiblue",9000],["A3L_VolksWagenGolfGTiwhite",9000],
	["A3L_F350Black",35000],["A3L_F350Blue",35000],["A3L_F350Red",35000],["A3L_F350White",35000],
	["A3L_Dumptruck",100000],["C_Van_01_box_F",45000],["C_Van_01_transport_F",20000],
	["A3L_GrandCaravanUC",12500],["A3L_GrandCaravanUCBlack",12500],
	["A3L_TaurusFPBLBPD",12500],["A3L_TaurusFPBLBCSO",12500],["A3L_TaurusUCBlack",12500],
	["A3L_TaurusUCGrey",20500],["A3L_TaurusUCWhite",25000],["A3L_TaurusUCBlue",25000],["A3L_TaurusUCRed",25000],
	["A3L_CVPIFPBLBPD",22500],["A3L_CVPIFPBLBCSO",22500],["A3L_CVPIFPBLBFG",22500],
	["A3L_jailBus",25000],
	["A3L_Suburban",27500],["A3L_SuburbanCSO",27500],["A3L_SuburbanFG",27500],
	["cl3_e63_amg_white",80000],["cl3_e63_amg_purple",80000],["cl3_e63_amg_navy_blue",80000],["cl3_e63_amg_lime",80000],["cl3_e63_amg_light_yellow",80000],
	["cl3_e63_amg_light_blue",80000],["cl3_e63_amg_grey",80000],["cl3_e63_amg_gold",80000],["cl3_e63_amg_burgundy",80000],["cl3_e63_amg_black",80000],["cl3_e63_amg_camo",80000],
	["cl3_e60_m5_white",75000],["cl3_e60_m5_purple",75000],["cl3_e60_m5_navy_blue",75000],["cl3_e60_m5_lime",75000],["cl3_e60_m5_light_yellow",75000],
	["cl3_e60_m5_light_blue",75000],["cl3_e60_m5_grey",75000],["cl3_e60_m5_gold",75000],["cl3_e60_m5_burgundy",75000],["cl3_e60_m5_black",75000],["cl3_e60_m5_camo",75000],
	["cl3_z4_2008_white",80000],["cl3_z4_2008_purple",80000],["cl3_z4_2008_navy_blue",80000],["cl3_z4_2008_lime",80000],["cl3_z4_2008_light_yellow",80000],
	["cl3_z4_2008_light_blue",80000],["cl3_z4_2008_grey",80000],["cl3_z4_2008_burgundy",80000],["cl3_z4_2008_black",80000],["cl3_z4_2008_camo",80000],
	["S_PorscheRS_Black",180000],["S_PorscheRS_Yellow",180000],["S_PorscheRS_White",180000],
	["cl3_carrera_gt_white",300000],["cl3_carrera_gt_purple",300000],["cl3_carrera_gt_navy_blue",300000],["cl3_carrera_gt_lime",300000],["cl3_carrera_gt_light_yellow",300000],
	["cl3_carrera_gt_light_blue",300000],["cl3_carrera_gt_grey",300000],["cl3_carrera_gt_gold",300000],["cl3_carrera_gt_burgundy",300000],["cl3_carrera_gt_black",300000],["cl3_carrera_gt_camo",300000],
	["cl3_insignia_white",50000],["cl3_insignia_purple",50000],["cl3_insignia_navy_blue",50000],["cl3_insignia_lime",50000],["cl3_insignia_light_yellow",50000],
	["cl3_insignia_light_blue",50000],["cl3_insignia_grey",50000],["cl3_insignia_gold",50000],["cl3_insignia_burgundy",50000],["cl3_insignia_black",50000],["cl3_insignia_camo",50000],
	["cl3_golf_mk2_white",12500],["cl3_golf_mk2_purple",12500],["cl3_golf_mk2_navy_blue",12500],["cl3_golf_mk2_lime",12500],["cl3_golf_mk2_light_yellow",12500],
	["cl3_golf_mk2_light_blue",12500],["cl3_golf_mk2_grey",12500],["cl3_golf_mk2_gold",12500],["cl3_golf_mk2_burgundy",12500],["cl3_golf_mk2_black",12500],["cl3_golf_mk2_camo",12500],
	["cl3_polo_gti_white",17500],["cl3_polo_gti_purple",17500],["cl3_polo_gti_navy_blue",17500],["cl3_polo_gti_lime",17500],["cl3_polo_gti_light_yellow",17500],
	["cl3_polo_gti_light_blue",17500],["cl3_polo_gti_grey",17500],["cl3_polo_gti_gold",17500],["cl3_polo_gti_burgundy",17500],["cl3_polo_gti_black",17500],["cl3_polo_gti_camo",17500],
	["cl3_reventon_white",340000],["cl3_reventon_purple",340000],["cl3_reventon_navy_blue",340000],["cl3_reventon_lime",340000],["cl3_reventon_light_yellow",340000],
	["cl3_reventon_light_blue",340000],["cl3_reventon_grey",340000],["cl3_reventon_gold",340000],["cl3_reventon_burgundy",340000],["cl3_reventon_black",340000],
	["cl3_reventon_2tone2",340000],["cl3_reventon_2tone3",340000],["cl3_reventon_2tone4",340000],["cl3_reventon_2tone5",340000],["cl3_reventon_flame1",340000],["cl3_reventon_camo",340000],
	["cl3_murcielago_white",300000],["cl3_murcielago_purple",300000],["cl3_murcielago_navy_blue",300000],["cl3_murcielago_lime",300000],["cl3_murcielago_light_yellow",300000],
	["cl3_murcielago_light_blue",300000],["cl3_murcielago_grey",300000],["cl3_murcielago_gold",300000],["cl3_murcielago_burgundy",300000],["cl3_murcielago_black",300000],
	["cl3_murcielago_2tone2",300000],["cl3_murcielago_2tone3",300000],["cl3_murcielago_2tone4",300000],["cl3_murcielago_2tone5",300000],["cl3_murcielago_flame1",300000],["cl3_murcielago_camo",300000],
	["cl3_lamborghini_gt1_white",400000],["cl3_lamborghini_gt1_purple",400000],["cl3_lamborghini_gt1_navy_blue",400000],["cl3_lamborghini_gt1_lime",400000],["cl3_lamborghini_gt1_light_yellow",400000],
	["cl3_lamborghini_gt1_light_blue",400000],["cl3_lamborghini_gt1_grey",400000],["cl3_lamborghini_gt1_gold",400000],["cl3_lamborghini_gt1_burgundy",400000],["cl3_lamborghini_gt1_black",400000],
	["cl3_dbs_volante_white",100000],["cl3_dbs_volante_purple",100000],["cl3_dbs_volante_navy_blue",100000],["cl3_dbs_volante_lime",100000],["cl3_dbs_volante_light_yellow",100000],
	["cl3_dbs_volante_light_blue",100000],["cl3_dbs_volante_grey",100000],["cl3_dbs_volante_gold",100000],["cl3_dbs_volante_burgundy",100000],["cl3_dbs_volante_black",100000],
	["cl3_dbs_volante_flame1",100000],["cl3_dbs_volante_camo",100000],
	["S_Vantage_Red",90000],["S_Vantage_Blue",90000],["S_Vantage_Black",90000],["S_Vantage_Yellow",90000],["S_Vantage_LightBlue",90000],["S_Vantage_Purple",90000],["S_Vantage_White",90000],
	["IVORY_R8",240000],
	["ivory_c",993750],["ivory_c_livery1",993750],["ivory_c_livery2",993750],["ivory_c_livery3",993750],["ivory_c_livery4",993750],
	["ivory_lfa",511500],["ivory_lfa_sport1",511500],["ivory_lfa_sport2",511500],["ivory_lfa_sport3",511500],["ivory_lfa_sport4",511500],["ivory_lfa_sport5",511500],
	["Mrshounka_a3_gtr_civ_noir",232500],["Mrshounka_a3_gtr_civ_bleu",232500],["Mrshounka_a3_gtr_civ_orange",232500],["Mrshounka_a3_gtr_civ_grau",232500],["Mrshounka_a3_gtr_civ_gruen",232500],["Mrshounka_a3_gtr_civ_violet",232500],
	["shounka_a3_rs5_civ_noir",351000],["shounka_a3_rs5_civ_bleufonce",351000],["shounka_a3_rs5_civ_rouge",351000],["shounka_a3_rs5_civ_jaune",351000],["shounka_a3_rs5_civ_rose",351000],["shounka_a3_rs5_civ_grise",351000],["shounka_a3_rs5_civ_violet",351000],["shounka_a3_rs5_civ_orange",351000],
	["mrshounka_huracan_c_noir",491190],["mrshounka_huracan_c_bleufonce",491190],["mrshounka_huracan_c_rouge",491190],["mrshounka_huracan_c_jaune",491190],["mrshounka_huracan_c_rose",491190],["mrshounka_huracan_c_grise",491190],["mrshounka_huracan_c_violet",491190],["mrshounka_huracan_c_orange",491190],
	["Mrshounka_veneno_c_noir",1413172],["Mrshounka_veneno_c_bleu",1413172],["Mrshounka_veneno_c_jaune",1413172],["Mrshounka_veneno_c_grau",1413172],["Mrshounka_veneno_c_rot",1413172],["Mrshounka_veneno_c_gruen",1413172],["Mrshounka_veneno_c_violet",1413172],
	["Mrshounka_bmwm1_civ_noir",275505],["Mrshounka_bmwm1_civ_bleufonce",275505],["Mrshounka_bmwm1_civ_rouge",275505],["Mrshounka_bmwm1_civ_jaune",275505],["Mrshounka_bmwm1_civ_rose",275505],["Mrshounka_bmwm1_civ_grise",275505],["Mrshounka_bmwm1_civ_violet",275505],["Mrshounka_bmwm1_civ_orange",275505],
	["Mrshounka_mustang_mat",264465],["Mrshounka_mustang_noir",264465],["Mrshounka_mustang_mat_n",264465],["Mrshounka_mustang_bleufonce",264465],["Mrshounka_mustang_mat_b",264465],["Mrshounka_mustang_rouge",264465],["Mrshounka_mustang_jaune",264465],["Mrshounka_mustang_rose",264465],["Mrshounka_mustang_grise",264465],["Mrshounka_mustang_violet",264465],["Mrshounka_mustang_orange",264465],
	["shounka_a3_renaultmagnum_f",262500],
	["cl3_r8_spyder_white",260000],["cl3_r8_spyder_purple",260000],["cl3_r8_spyder_navy_blue",260000],["cl3_r8_spyder_lime",260000],["cl3_r8_spyder_light_yellow",260000],
	["cl3_r8_spyder_light_blue",260000],["cl3_r8_spyder_grey",260000],["cl3_r8_spyder_gold",260000],["cl3_r8_spyder_burgundy",260000],["cl3_r8_spyder_black",260000],
	["cl3_r8_spyder_2tone2",260000],["cl3_r8_spyder_2tone3",260000],["cl3_r8_spyder_2tone4",260000],["cl3_r8_spyder_2tone5",260000],["cl3_r8_spyder_flame1",260000],["cl3_r8_spyder_camo",260000],
	["cl3_458_white",260000],["cl3_458_purple",260000],["cl3_458_navy_blue",260000],["cl3_458_lime",260000],["cl3_458_light_yellow",260000],
	["cl3_458_light_blue",260000],["cl3_458_grey",260000],["cl3_458_gold",260000],["cl3_458_burgundy",260000],["cl3_458_black",260000],
	["cl3_458_2tone2",260000],["cl3_458_2tone3",260000],["cl3_458_2tone4",260000],["cl3_458_2tone5",260000],["cl3_458_flame1",260000],["cl3_458_camo",260000],
	["Jonzie_Mini_Cooper_R_spec",150000],["Jonzie_Mini_Cooper",1000],
	["cl3_arielatom_race_white",550000],["cl3_arielatom_race_purple",550000],["cl3_arielatom_race_navy_blue",550000],["cl3_arielatom_race_lime",550000],["cl3_arielatom_race_light_yellow",550000],
	["cl3_arielatom_race_light_blue",550000],["cl3_arielatom_race_grey",550000],["cl3_arielatom_race_gold",550000],["cl3_arielatom_race_burgundy",550000],["cl3_arielatom_race_black",550000],["cl3_arielatom_race_camo",550000],
	["cl3_veyron_blk_wht",500000],["cl3_veyron_lblue_dblue",500000],["cl3_veyron_lblue_lblue",500000],["cl3_veyron_brn_blk",500000],
	["Mrshounka_bmwm6_noir",1143750],["Mrshounka_bmwm6_bleufonce",1143750],["Mrshounka_bmwm6_rouge",1143750],["Mrshounka_bmwm6_jaune",1143750],["Mrshounka_bmwm6_rose",1143750],["Mrshounka_bmwm6_grise",1143750],["Mrshounka_bmwm6_violet",1143750],["Mrshounka_bmwm6_orange",1143750],
	["Mrshounka_megane_rs_2015_noir",92500],["Mrshounka_megane_rs_2015_bleufonce",92500],["Mrshounka_megane_rs_2015_rouge",92500],["Mrshounka_megane_rs_2015_jaune",92500],["Mrshounka_megane_rs_2015_rose",92500],["Mrshounka_megane_rs_2015_grise",92500],["Mrshounka_megane_rs_2015_violet",92500],["Mrshounka_megane_rs_2015_orange",92500],
	/*["Mrshounka_Volkswagen_Touareg_noir",62500],["Mrshounka_Volkswagen_Touareg_bleufonce",62500],["Mrshounka_Volkswagen_Touareg_rouge",62500],["Mrshounka_Volkswagen_Touareg_jaune",62500],["Mrshounka_Volkswagen_Touareg_rose",62500],["Mrshounka_Volkswagen_Touareg_grise",62500],["Mrshounka_Volkswagen_Touareg_violet",62500],["Mrshounka_Volkswagen_Touareg_orange",62500],*/ // Buggy
	["Mrshounka_hummer_civ_noir",262500],["Mrshounka_hummer_civ_bleufonce",262500],["Mrshounka_hummer_civ_rouge",262500],["Mrshounka_hummer_civ_jaune",262500],["Mrshounka_hummer_civ_rose",262500],["Mrshounka_hummer_civ_grise",262500],["Mrshounka_hummer_civ_violet",262500],["Mrshounka_hummer_civ_orange",262500],
	["shounka_a3_audiq7_v2_gendarmerie",41250],
	/*["Mrshounka_Volkswagen_Touareg_police_police",41250],*/ //Buggy
	["Mrshounka_rs_2015_g",20250],
	["A3L_CVPILBFD",5000],
	["Jonzie_Ambulance",12500],
	["cl3_dodge_charger_emt",50000],
	["O_Heli_Transport_04_medevac_F",75000],
	["A3L_RX7_Blue",64000],["A3L_RX7_Red",64000],["A3L_RX7_White",64000],["A3L_RX7_Black",64000],
	["S_McLarenP1_Black",400000],["S_McLarenP1_Blue",400000],["S_McLarenP1_Orange",400000],["S_McLarenP1_White",400000],["S_McLarenP1_Yellow",400000],["S_McLarenP1_Silver",400000],
	["A3L_CVWhite",15000],["A3L_CVBlack",15000],["A3L_CVGrey",15000],["A3L_CVRed",15000],["A3L_CVPink",15000],["A3L_CVBlue",15000],
	["cl3_dodge_charger_f_white",55000],["cl3_dodge_charger_f_purple",55000],["cl3_dodge_charger_f_blue",55000],["cl3_dodge_charger_f_lime",55000],["cl3_dodge_charger_f_yellow",55000],
	["cl3_dodge_charger_f_grey",55000],["cl3_dodge_charger_f_black",55000],["cl3_dodge_charger_f_darkgreen",55000],["cl3_dodge_charger_f_darkred",55000],["cl3_dodge_charger_f_orange",55000],["cl3_dodge_charger_f_camo",55000],["cl3_dodge_charger_f_camourban",55000],
	["cl3_s1203_blue",2500],["cl3_lada_red",2750],["cl3_lada_white",2750],["cl3_volha_black",3000],["cl3_volha_grey",3000],
	["cl3_suv_black",30000],["cl3_suv_taxi",37500],
	["cl3_civic_vti_white",25000],["cl3_civic_vti_purple",25000],["cl3_civic_vti_navy_blue",25000],["cl3_civic_vti_lime",25000],["cl3_civic_vti_light_yellow",25000],
	["cl3_civic_vti_light_blue",25000],["cl3_civic_vti_grey",25000],["cl3_civic_vti_gold",25000],["cl3_civic_vti_burgundy",25000],["cl3_civic_vti_black",25000],["cl3_civic_vti_camo",25000],
	["cl3_range_rover_white",10000],["cl3_range_rover_purple",10000],["cl3_range_rover_navy_blue",10000],["cl3_range_rover_lime",10000],["cl3_range_rover_light_yellow",10000],
	["cl3_range_rover_light_blue",10000],["cl3_range_rover_grey",10000],["cl3_range_rover_gold",10000],["cl3_range_rover_burgundy",10000],["cl3_range_rover_black",10000],["cl3_range_rover_camo",10000],
	["A3L_Bus",35000],["A3L_SchoolBus",42500],["A3L_Towtruck",25000],
	["GNT_C185F",500000],["GNT_C185",500000],
	["IVORY_CRJ200_1",1600000],
	["IVORY_YAK42D_1",2000000],
	["DAR_ImpalaPolice",3750],
	["DAR_TaurusPolice",12500],
	["DAR_ExplorerPolice",12500],
	["DAR_ExplorerPoliceStealth",12500],
	["DAR_CVPIPolice",22500],
	["DAR_TahoePolice",27500],
	["A3L_EvoXFPBLBPD",35000],
	["AM_2015C_White",112500],["AM_2015C_Black",112500],["AM_2015C_blue",112500],["AM_2015C_Green",112500],["AM_2015C_Grey",112500],["AM_2015C_Red",112500],["AM_2015C_Orange",112500],["charger_st",40000],["charger_sh",40000],["charger_lvpd",40000],["charger_ems",40000],["charger_umw",40000],["charger_umb",40000],
	["cl3_dodge_charger_k9",30000],
	["DAR_CVPIAuxiliary",22500],
	["A3L_EvoXFPBLBSO",35000],["A3l_evoxADAC",35000],["A3L_EvoXFPBLBMED",35000],
	["cl3_dodge_charger_patrol",30000],
	["A3L_CVPIUC",25000],["A3L_CVPIUCWhite",25000],["A3L_CVPIUCBlack",25000],["A3L_CVPIGrey",25000],["A3L_CVPIUCRed",25000],["A3L_CVPIUCPink",25000],["A3L_CVPIUCBlue",25000],
	["A3L_ChargerUC",30000],["A3L_ChargerUCWhite",30000],["A3L_ChargerLB",30000],
	["DAR_TahoePoliceDet",27500],
	["A3L_CVPIFPBLBHP",22500],["A3L_CVPIFPBLBSM",22500],["A3L_CVPIFPBLBSP2",22500],["A3L_CVLac",22500],
	["ivory_rev_fbi",50000],["ivory_rev_fbi2",50000],["ivory_rev_fbi3",50000],["ivory_rev_fbi4",50000],["ivory_rev_fbi5",50000],["ivory_rev_fbi6",50000],["ivory_rev_fbi7",50000],["ivory_rev_fbi8",50000],["ivory_rev_fbi9",50000],["ivory_rev_fbi10",50000],["ivory_rev_fbi11",50000],
	["IVORY_REV",50000],
	["ivory_rev_black",355000],["ivory_rev_blue",355000],["ivory_rev_lime",355000],["ivory_rev_pink",355000],["ivory_rev_rot",355000],["ivory_rev_turkis",355000],["ivory_rev_orange",355000],["ivory_rev_sport1",355000],["ivory_rev_sport2",355000],["ivory_rev_sport3",355000],["ivory_rev_sport4",355000],
	["I_Heli_light_03_unarmed_F",50000],
	["B_Heli_Transport_01_F",100000],
	["B_Heli_Transport_03_unarmed_F",150000],
	["O_Heli_Transport_04_F",150000],
	["O_Heli_Transport_04_covered_F",150000],
	["IVORY_T6A_1",150000],
	["A3L_Ship",350000],["A3L_Jetski",75000],["A3L_Jetski_yellow",75000],
	
	["IVORY_PRIUS",1200],["C_Heli_Light_01_civil_F",150000],["B_Heli_Light_01_F",100000],["O_Heli_Light_02_unarmed_F",175000],["ivory_b206_rescue",100000],["ivory_b206",100000],
	["ivory_b206_news",100000],["ivory_b206_police",100000],["EC635_Unarmed_BW",35000],["EC635_ADAC",55000],["EC635_SAR",55000],["EC635_Unarmed_CSAT",50000],["IVORY_BELL512_POLICE",185000],["IVORY_BELL512",185000],["IVORY_BELL512_RESCUE",185000],["dar_tahoeems",10000]
];
__CONST__(life_garage_sell,life_garage_sell);