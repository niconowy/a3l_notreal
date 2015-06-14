/*
	File: fn_clothing_fbi.sqf
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
			//["FBI_uni",nil,250],
			["FBI_rang1",nil,250],
			["FBI_rang2",nil,250],
			["FBI_rang3",nil,250],
			["FBI_rang4",nil,250],
			["FBI_rang5",nil,250],
			["FBI_rang6",nil,250],
			["FBI_rang7",nil,250],
			["FBI_rang8",nil,250],
			["FBI_rang9",nil,250],
			["TRYK_U_B_C02_Tsirt","Schwarze Jeans",450],
			["KAEL_SUITS_BR_F13","Anzug (Weiss)",17500],
			["KAEL_SUITS_BR_F4","Anzug (Lila)",17500],
			["KAEL_SUITS_BR_F5","Anzug (Pink)",17500],
			["KAEL_SUITS_BR_F","Anzug (Rot)",17500],
			["KAEL_SUITS_BR_F3","Anzug (Blau)",17500],
			["A3L_Suit_Uniform","Anzug (Schwarz)",17500],
			["A3L_Bikini_Girl","Bikini Girl",25000],
			["A3L_Priest_Uniform","Priest Uniform",10000],
			["A3L_Character_Uniform","Life Uniform",15000],
			["A3L_Dude_Outfit","Kollegah Outfit",20000],
			["A3L_Farmer_Outfit","Bauernkleidung",20000],
			["A3L_Worker_Outfit","Arbeiterkleidung",20000],
			["A3LShirt","ArmA 3 Life Shirt",250],
			["A3L_Poop2day","I Pooped Today!",275],
			["A3L_A3LogoPants","Logo Pants",150],
			["pervt_uni","Pervert Shirt",175],
			["BluePlaid_uni","Plaid (Blau)",125],
			["OrangePlaid_uni","Plaid (Orange)",350],
			["PinkPlaid_uni","Plaid (Pink)",350],
			["RedPlaid_uni","Plaid (Rot)",350],
			["YellowPlaid_uni","Plaid (Gelb)",350],
			["checkered_uni","Polo (Checkered)",350],
			["GbGyBr_uni","Polo (GB-GY-BR)",350],
			["GnBlBr_uni","Polo (GN-BL-BR)",350],
			["GnGyBr_uni","Polo (GN-GN-GY)",350],
			["GyBlBr_uni","Polo (GY-BL-BR)",350],
			["kingfish_uni","Polo (Kingfish)",350],
			["mothertrucker_uni","Polo (Mothertrucker)",350],
			["OrBlBr_uni","Polo (OR-BL-BR)",350],
			["OrGnGy_uni","Polo (OR-GN-GY)",350],
			["OrGyBr_uni","Polo (OR-GY-BR)",350],
			["PkGnGy_uni","Polo (PK-GN-GY)",350],
			["PkGyBr_uni","Polo (PK-GY-BR)",350],
			["RdBlBr_uni","Polo (RD-BL-BR)",350],
			["RdGnGy_uni","Polo (RD-GN-GY)",350],
			["RdGyBr_uni","Polo (RD-GY-BR)",350],
			["sohoku_uni","Polo (Sohoku)",350],
			["WhBlBr_uni","Polo (WH-BL-BR)",350],
			["WhGyBr_uni","Polo (WH-GY-BR)",350],
			["YlBlBr_uni","Polo (YL-BL-BR)",350],
			["YlGnGy_unI","Polo (YL-GN-GY)",350],
			["YlGyBr_uni","Polo (YL-GY-BR)",350],
			["racer_uni","Racer Uniform",350],
			["taxi_uni","Taxi Uniform",350],
			["arma3","ArmA 3 Polo",350],
			["arma3black","ArmA 3 Polo (Black)",350],
			["ATI","ATI Enthusiast",350],
			["tacobell","Delgado Shirt",350],
			["dutch","Holland Shirt",350],
			["hanacd","Hannes Academy",350],
			["nvidia","NVIDIA Enthusiast",350],
			["SFG","SF Giant",350],
			["walkingdead","The Walking Dead",350],
			["BreakingBad","The Breaking Dead",350],
			["HI1",nil,350],
			["U_C_Journalist",nil,350],
			["PH",nil,350],
			["RastaCiv",nil,350],
			["skullshirt_uni",nil,350],
			["TMBass_uni","Touch My Bass",350],

	/*		
			//1.7.1
			//["glt_clothes_citizen",nil,700],
			//["glt_clothes_citizen2",nil,700],
			//["glt_clothes_citizen3",nil,700],
			//["glt_clothes_citizen4",nil,700],
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
			//["glt_clothes_villager",nil,1000],
			//["glt_clothes_villager2",nil,1000],
			//["glt_clothes_villager3",nil,1000],
			//["glt_clothes_villager4",nil,1000],
			//["glt_clothes_woodlander",nil,1000],
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
	*/		
			["vacationshirt_uni","Urlaubskleidung",350]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_HelmetB_black","FBI Helm",50],
			["kio_vfv_mask","Vendetta",2500],
			["A3L_Legoman","Legokopf",10000],
			["A3L_Halloween_Pumpkinhead","Pumpkin",10000],
			["A3L_Halloween_PredatorMask","Predator",7500],
			["A3L_Halloween_JigSaw","Jigsaw",7500],
			["jokermask","Clown",7500],
			["A3L_PaintBallHelmet_green","PaintballG",5000],
			["A3L_PaintBallHelmet_red","PaintballR",5000],
			["A3L_PaintBallHelmet_blue","PaintballB",5000],
			["A3L_PaintBallHelmet_yellow","PaintballY",5000],
			["A3L_soa_helmet","Biker Helm",4000],	
			["A3L_gangster_hat","Gangster Maske",1000],
			["A3L_Mask","Mask",1000],				
			["A3L_longhairblack","Lang-Haar Schwarz",120],
			["A3L_longhairblond","Lang-Haar Blond",120],
			["A3L_longhairbrown","Lang-Haar Braun",120],
			["A3L_Crown","Krone",120],
			["cowboyhat","Cowboyhut",120],
			["A3L_mexicanhat","Mexican Hut",120],
			["santahat","Weihnachtszipfel",120],
			["A3L_Sombrero","Sombrero",120],
			["turban","Turban",120],
			["A3L_russianhat","Schapka Uschanka",120],
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

/*			
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
*/			
			["kio_spinning_hat","Propellerhut",5000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["SFG_Tac_BeardD","Bart (Dunkel)",275],
			["SFG_Tac_BeardB","Bart (Blond)",275],
			["SFG_Tac_BeardG","Bart (Ginger)",275],
			["SFG_Tac_BeardO","Bart (Alt)",275],
			["SFG_Tac_ChopsD","Mutton Chops (Dunkel)",275],
			["SFG_Tac_ChopsG","Mutton Chops (Ginger)",275],
			["SFG_Tac_ChopsB","Mutton Chops (Blond)",275],
			["SFG_Tac_ChopsO","Mutton Chops (Alt)",275],
			["SFG_Tac_moustacheD","Moustache (Dunkel)",275],
			["SFG_Tac_moustacheG","Moustache (Ginger)",275],
			["SFG_Tac_moustacheB","Moustache (Blond)",275],
			["SFG_Tac_moustacheO","Moustache (Alt)",275],
			["SFG_Tac_chinlessbD","Chinless Beard (Dunkel)",275],
			["SFG_Tac_chinlessbG","Chinless Beard (Ginger)",275],
			["SFG_Tac_chinlessbB","Chinless Beard (Blond)",275],
			["SFG_Tac_chinlessbO","Chinless Beard (Alt)",275],
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
			["A3L_policevest1","FBI Weste",150],
			["k_cut_1","Sinister Sons",2500],
			["k_cut_2","Gold Gunners",2500],
			["k_cut_3","Sons of Anarchy Mitglied",2500],
			["k_cut_4","Sons of Anarchy Chef",2500],
			["k_cut_5","Sons of Outlaws",2500],
			["Jamie_Sheriff1","Große FBI Weste",550],
			["Jamie_Rebell",nil,550]
		];
	};

	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr","Schulrucksack",250],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oli",nil,500],
/*			// 1.7.1
			["glt_backpack_cars",nil,1000],
			["glt_backpack_dora",nil,1000],
			["glt_bergen_blue",nil,1000],
			["glt_bergen_green",nil,1000],
			["glt_bergen_orange",nil,1000],
			["glt_bergen_pink",nil,1000],
			["glt_bergen_red",nil,1000],
			["glt_bergen_violet",nil,1000],
			["glt_bergen_yellow",nil,1000],
*/			
			["B_Carryall_khk",nil,500]
		];
	};
	
};
