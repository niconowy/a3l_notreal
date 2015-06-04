/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
#include <macro.h>
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
//ctrlSetText[3104,"FBI Clothing Shop"];

If (__GETC__(life_donator) <= 3)exitwith{closeDialog 0; hint "Du bist nicht in der FBI Abteilung tätig (-Dlvl)"};

switch (_filter) do
{
	//Uniform
	
		
	case 0:
	{
		[
		//["A3L_Zombie","Zombie",35000],
		["FBI_uni","FBI Kleidung",250],
		["TRYK_U_B_C02_Tsirt","TRYK CasualUniform (Jeans Black)",450],
		["KAEL_SUITS_BR_F13","Kael Suit (White)",17500],
		["KAEL_SUITS_BR_F4","Kael Suit (Purple)",17500],
		["KAEL_SUITS_BR_F5","Kael Suit (Pink)",17500],
		["KAEL_SUITS_BR_F","Kael Suit (Red)",17500],
		["KAEL_SUITS_BR_F3","Kael Suit (Blue)",17500],
		["A3L_Bikini_Girl","Bikini Girl",25000],
		["A3L_Priest_Uniform","Priest Uniform",10000],
		["A3L_Suit_Uniform","Suit",17500],
		["A3L_Character_Uniform","Life Uniform",15000],
		["A3L_Dude_Outfit","Dude outfit",20000],
		["A3L_Farmer_Outfit","Farmer Outfit",20000],
		["A3L_Worker_Outfit","Worker Outfit",20000],
		["A3LShirt","ArmA 3 Life Shirt",250],
		["A3L_Poop2day","I Pooped Today!",275],
		["A3L_A3LogoPants","A3L Logo Pants",150],
		["pervt_uni","Pervert Shirt",175],
		["BluePlaid_uni","A3L Plaid (Blue)",125],
		["OrangePlaid_uni","A3L Plaid (Orange)",350],
		["PinkPlaid_uni","A3L Plaid (Pink)",350],
		["RedPlaid_uni","A3L Plaid (Red)",350],
		["YellowPlaid_uni","A3L Plaid (Yellow)",350],
		["checkered_uni","A3L Polo (Checkered)",350],
		["GbGyBr_uni","A3L Polo (GB-GY-BR)",350],
		["GnBlBr_uni","A3L Polo (GN-BL-BR)",350],
		["GnGyBr_uni","A3L Polo (GN-GN-GY)",350],
		["GyBlBr_uni","A3L Polo (GY-BL-BR)",350],
		["kingfish_uni","A3L Polo (Kingfish)",350],
		["mothertrucker_uni","A3L Polo (Mothertrucker)",350],
		["OrBlBr_uni","A3L Polo (OR-BL-BR)",350],
		["OrGnGy_uni","A3L Polo (OR-GN-GY)",350],
		["OrGyBr_uni","A3L Polo (OR-GY-BR)",350],
		["PkGnGy_uni","A3L Polo (PK-GN-GY)",350],
		["PkGyBr_uni","A3L Polo (PK-GY-BR)",350],
		["RdBlBr_uni","A3L Polo (RD-BL-BR)",350],
		["RdGnGy_uni","A3L Polo (RD-GN-GY)",350],
		["RdGyBr_uni","A3L Polo (RD-GY-BR)",350],
		["sohoku_uni","A3L Polo (Sohoku)",350],
		["WhBlBr_uni","A3L Polo (WH-BL-BR)",350],
		["WhGyBr_uni","A3L Polo (WH-GY-BR)",350],
		["YlBlBr_uni","A3L Polo (YL-BL-BR)",350],
		["YlGnGy_unI","A3L Polo (YL-GN-GY)",350],
		["YlGyBr_uni","A3L Polo (YL-GY-BR)",350],
		["racer_uni","A3L Racer Uniform",350],
		["taxi_uni","A3L Taxi Uniform",350],
		["arma3","ArmA 3 Polo",350],
		["arma3black","ArmA 3 Polo (Black)",350],
		["ATI","ATI Enthusiast",350],
		["tacobell","Delgado Shirt",350],
		["dutch","Dutch Shirt",350],
		["hanacd","Hannes Academy",350],
		["nvidia","Nvidia Enthusiast",350],
		["SFG","SF Giant",350],
		["walkingdead","The Walking Dead",350],
		["BreakingBad","The Breaking Dead",350],
		["pervt_uni",nil,350],
		["HI1",nil,350],
		["U_C_Journalist",nil,350],
		["PH",nil,350],
		["RastaCiv",nil,350],
		["skullshirt_uni",nil,350],
		["TMBass_uni",nil,350],
		
		//1.7.1
		/*["glt_clothes_citizen",nil,700],
		["glt_clothes_citizen2",nil,700],
		["glt_clothes_citizen3",nil,700],
		["glt_clothes_citizen4",nil,700],*/
		["glt_clothes_survivor01",nil,700],
		["glt_clothes_survivor02",nil,700],
		["glt_clothes_survivor03",nil,700],
		["glt_clothes_survivor04",nil,700],
		["glt_clothes_survivor05",nil,700],
		["glt_clothes_survivor06",nil,700],
		["glt_clothes_survivor07",nil,700],
		["glt_clothes_profiteer2",nil,1000],
		["glt_clothes_profiteer3",nil,1000],
		["glt_clothes_profiteer4",nil,1000],
		/*["glt_clothes_villager",nil,1000],
		["glt_clothes_villager2",nil,1000],
		["glt_clothes_villager3",nil,1000],
		["glt_clothes_villager4",nil,1000],
		["glt_clothes_woodlander",nil,1000],*/
		["glt_clothes_woodlander2",nil,1000],
		["glt_clothes_woodlander3",nil,1000],
		["glt_clothes_woodlander4",nil,1000],
		["glt_clothes_worker2",nil,1000],
		["glt_clothes_worker3",nil,1000],
		["glt_clothes_worker4",nil,1000],
		
		["glt_poloshirt_arma3",nil,1000],
		["glt_poloshirt_arrow",nil,1000],
		["glt_poloshirt_banana",nil,1000],
		["glt_poloshirt_beach",nil,1000],
		["glt_poloshirt_beer",nil,1000],
		["glt_poloshirt_bug",nil,1000],
		["glt_poloshirt_cpio",nil,1000],
		["glt_poloshirt_day",nil,1000],
		["glt_poloshirt_dayz",nil,1000],
		["glt_poloshirt_engineer",nil,1000],
		["glt_poloshirt_friendly",nil,1000],
		["glt_poloshirt_gob1",nil,1000],
		["glt_poloshirt_gob2",nil,1000],
		["glt_poloshirt_gob3",nil,1000],
		["glt_poloshirt_gob4",nil,1000],
		["glt_poloshirt_gob5",nil,1000],
		["glt_poloshirt_gob6",nil,1000],
		["glt_poloshirt_gob7",nil,1000],
		["glt_poloshirt_gob8",nil,1000],
		["glt_poloshirt_greece",nil,1000],
		["glt_poloshirt_grenade",nil,1000],
		["glt_poloshirt_grumpy",nil,1000],
		["glt_poloshirt_kickme",nil,1000],
		["glt_poloshirt_madsin",nil,1000],
		["glt_poloshirt_nomaam",nil,1000],
		["glt_poloshirt_spongebob",nil,1000],
		["glt_poloshirt_stupid",nil,1000],
		["glt_poloshirt_wedding",nil,1000],
		
		
		["vacationshirt_uni",nil,350]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_HelmetB_black","FBI Helm",50],
			["A3L_Legoman","Lego Helmet",10000],
			["A3L_Halloween_Pumpkinhead","Pumpkin",10000],
			["A3L_Halloween_PredatorMask","Predator",7500],
			["A3L_Halloween_JigSaw","Jigsaw",7500],
			["jokermask","Clown",7500],
			["A3L_PaintBallHelmet_green","PaintballG",5000],
			["A3L_PaintBallHelmet_red","PaintballR",5000],
			["A3L_PaintBallHelmet_blue","PaintballB",5000],
			["A3L_PaintBallHelmet_yellow","PaintballY",5000],
			["A3L_soa_helmet","Biker Helmet",4000],	
			["A3L_gangster_hat","Gangster Mask",1000],
			["A3L_Mask","Mask",1000],				
			["A3L_longhairblack","Long Hair Black",120],
			["A3L_longhairblond","Long Hair Blond",120],
			["A3L_longhairbrown","Long Hair Brown",120],
			["A3L_Crown","Crown",120],
			["cowboyhat","Cowboyhat",120],
			["A3L_mexicanhat","Mexican Hat",120],
			["santahat","Santa hat",120],
			["A3L_Sombrero","Sombrero",120],
			["turban","Turban",120],
			["A3L_russianhat","Russianhat",120],
			["H_Cap_tan",nil,120],
			["H_Cap_blk",nil,120],
			["H_Cap_blk_CMMG",nil,120],
			["H_Cap_brn_SPECOPS",nil,120],
			["H_Cap_tan_specops_US",nil,120],
			["H_Cap_khaki_specops_UK",nil,120],
			["H_Cap_grn",nil,120],
			["H_Cap_grn_BI",nil,120],
			["H_Cap_blk_Raven",nil,120],
			["H_Cap_blk_ION",nil,120],
			["kio_capital_hat",nil,5000],
			["kio_hat",nil,5000],
			["kio_no1_hat",nil,5000],
			["kio_pirate_hat",nil,5000],
			["kio_santa_hat",nil,5000],
			["kio_skl_msk","Skull Mask",1500],
			["kio_skl_msk_red","Skull Mask Red",1500],
			["kio_skl_msk_grn","Skull Mask Green",1500],
			
			//1.7.1
			["glt_booniehat_orange",nil,1000],
			["glt_cap_ace",nil,1000],
			["glt_cap_bandit1",nil,1000],
			["glt_cap_bandit2",nil,1000],
			["glt_cap_major_league_infidel",nil,1000],
			["glt_cap_mad_sin",nil,1000],
			["glt_cap_jurassic_park",nil,1000],
			["glt_hat_aaf",nil,1000],
			["glt_hat_black",nil,1000],
			["glt_hat_brown",nil,1000],
			["glt_hat_cowboy_black",nil,1000],
			["glt_helmet_dragonborn",nil,1000],
			
			["glt_woolhat_black",nil,1000],
			["glt_woolhat_fuck_isis_black",nil,1000],
			["glt_woolhat_fuck_isis_blue",nil,1000],
			["glt_woolhat_fuck_isis_brown",nil,1000],
			["glt_woolhat_fuck_isis_green",nil,1000],
			["glt_woolhat_fuck_isis_red",nil,1000],
			
			["kio_spinning_hat",nil,5000]
			

		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["A3L_policevest1","FBI",150],
			["k_cut_1","Sinister Sons",550],
			["k_cut_2","Gold Gunners",550],
			["k_cut_3","Sons of Anarchy Member",550],
			["k_cut_4","Sons of Anarchy President",550],
			["k_cut_5","Sons of Outlaws",550],
			["Jamie_Sheriff1","Große FBI Weste",550],
			["Jamie_Rebell",nil,550]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,250],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oli",nil,500],
			// 1.7.1
			["glt_backpack_cars",nil,1000],
			["glt_backpack_dora",nil,1000],
			["glt_bergen_blue",nil,1000],
			["glt_bergen_green",nil,1000],
			["glt_bergen_orange",nil,1000],
			["glt_bergen_pink",nil,1000],
			["glt_bergen_red",nil,1000],
			["glt_bergen_violet",nil,1000],
			["glt_bergen_yellow",nil,1000],
			
			["B_Carryall_khk",nil,500]
		];
	};
	
};
