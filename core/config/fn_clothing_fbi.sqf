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
			["FBI_rang10",nil,250],
			["U_PMC_CombatUniformLS_ChckLB_GPBB","Blaues Combathemd",2500],
			["U_PMC_CombatUniformLS_ChckP_BPBB","Rotes Combathemd",2500],
			["U_CivilianMetro_D","Metro Braun",2500],
			["U_CivilianMetro_A","Metro Grau",2500],
			["TRYK_shirts_DENIM_RED2","Holzfäller",2500],
			["TRYK_shirts_DENIM_R",nil,2500],
			["TRYK_shirts_DENIM_BL",nil,2500],
			["TRYK_shirts_DENIM_BK",nil,2500],
			["TRYK_shirts_DENIM_WH",nil,2500],
			["TRYK_shirts_DENIM_BWH",nil,2500],
			["TRYK_shirts_DENIM_RED2",nil,2500],
			["TRYK_shirts_DENIM_WHB",nil,2500],
			["TRYK_shirts_DENIM_ylb",nil,2500],
			["TRYK_shirts_DENIM_od",nil,2500],
			["TRYK_U_B_Denim_T_BG_BK",nil,2500],
			["TRYK_U_B_BLK_T_BG_WH",nil,2500],
			["TRYK_U_B_C02_Tsirt","Schwarze Jeans",450],
			["KAEL_SUITS_BR_F13","Anzug (Weiss)",17500],
			["KAEL_SUITS_BR_F4","Anzug (Lila)",17500],
			["KAEL_SUITS_BR_F5","Anzug (Pink)",17500],
			["KAEL_SUITS_BR_F","Anzug (Rot)",17500],
			["KAEL_SUITS_BR_F3","Anzug (Blau)",17500],

			["U_CivilianSport_A",nil,750],
			["U_CivilianSport_B",nil,750],
			["U_CivilianSport_C",nil,750],
			["U_CivilianSport_D",nil,750],

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
			["vacationshirt_uni","Urlaubskleidung",350],
			
			["TRYK_ZARATAKI3","Takistan Soldier",6000],
			["TRYK_ZARATAKI","Takistan Soldier Tarn",6000],
			["TRYK_U_B_BLK","Biker-Jacke (Schwarz)",6000],
			["TRYK_U_B_BLK_Tshirt","Biker-Jacke (Schwarz,kurz)",6000],
			["TRYK_U_B_BLKBLK_CombatUniform","Biker-Kleidung (Schwarz)",6000],
			["TRYK_U_B_BLKBLK_R_CombatUniform","Biker-Kleidung (Schwarz,kurz)",6000],
			["TRYK_U_B_PCUHsW3",nil,8500],
			["TRYK_U_B_PCUGs_BLK_R",nil,8500],
			["TRYK_U_B_PCUGs_OD_R",nil,8500],
			["TRYK_U_B_PCUGs_gry_R",nil,8500],
			["TRYK_U_denim_hood_blk",nil,8500],
			["TRYK_U_B_PCUHsW2",nil,8500],
			["TRYK_U_B_PCUHsW5",nil,8500],
			["U_DressTKLocalUni_E_A",nil,500],
			["U_DressTKLocalUni_E_B",nil,500],
			["U_DressTKLocalUni_E_C",nil,500],
			["U_DressTKLocalUni_E_D",nil,500],
			["U_DressTKLocalUni_E_E",nil,500],

			["U_TKLocalUniLong_A",nil,4750],
			["U_TKLocalUniLong_B",nil,4750],
			["U_TKLocalUniLong_C",nil,4750],
			["U_TKLocalUniLong_D",nil,4750],
			["U_TKLocalUniLong_E",nil,4750],

			["U_TerrorCombat_A",nil,1755],
			["U_TerrorCombat_B",nil,1755],
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11000],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_O_PilotCoveralls",nil,15000],
			["U_IG_leader","Guerilla Leader",15000],
			["U_B_GhillieSuit","Wookie-Anzug (Hell)",65000],
			["U_I_GhillieSuit","Wookie-Anzug (Grün)",65000],
			["U_O_GhillieSuit","Wookie-Anzug (Braun)",65000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["do_fbicap","FBI Mütze",25],
			["H_HelmetB_black","FBI Helm",50],
			["Masque_Alien1",nil,3450],
			["Masque_Chuck",nil,3450],
			["Masque_Clinton",nil,3450],
			["Masque_Hoxton",nil,3450],
			["Masque_Gombo",nil,3450],
			["Masque_Bonnie",nil,3450],
			["Masque_Chains",nil,3450],
			["Masque_Santa","Scarry Santa",3250],
			["Masque_archNemesis","Monster Maske",3250],
			["Masque_Smiley","Scarry Clown",3250],
			["Masque_Religieuse","Nonnen Maske",3250],
			["H_Hat_HelmetT","Kriegshelm",3450],
			["H_Hat_HelmetA","Kriegshelm Grün",3450],
			["H_Hat_HelmetConical","Asia Hut",1350],
			["H_Hat_Boonie_Cowboy","Cowboy Hut",1350],
			["H_Hat_Golf_Blue","Golf Hut",1350],
			["H_Hat_CapSov_B","Sovjet Schwarz",1350],
			["H_Hat_CapSov_C","Sovjet Grün",1350],
			["TRYK_H_Bandana_wig","Perücken Bandana",1350],
			["TRYK_R_CAP_BLK ","Backcappy Schwarz",1350],
			["TRYK_H_wig","Perücke",1350],
			["Kio_Afro_Hat","Afro",1500],
			["H_ALFR_Dallas_Mask",nil,500],
			["H_ALFR_Samurai_Mask",nil,500],
			["H_ALFR_Sheep_Mask",nil,275],
			["H_ALFR_HorseMask",nil,275],
			["H_ALFR_DinoMask",nil,275],
			["H_ALFR_Headset",nil,250],
			
			["H_Hat_Turban_A",nil,275],
			["H_Hat_Turban_B",nil,275],
			["H_Hat_Turban_C",nil,275],
			["H_Hat_Turban_D",nil,275],
			["H_Hat_Turban_E",nil,275],

			["H_Hat_Face_Cover_Black",nil,850],
			["H_Hat_Face_Cover_Gold",nil,850],
			["H_Hat_Face_Cover_Green",nil,850],

			["H_Hat_Face_Wrap",nil,1050],
			["H_Hat_Face_Wrap_Desert",nil,1050],
			["H_Hat_Face_Wrap_Olive",nil,1050],
			["H_Hat_Face_Wrap_Red",nil,1050],
			
			["H_Hat_Kufiya_B",nil,1550],
			["H_Hat_Kufiya_F",nil,1550],
			["H_Hat_Kufiya_D",nil,1550],
			["H_Hat_Kufiya_C",nil,1550],
			
			["H_Hat_Ushanka",nil,120],
			["H_Hat_Ushanka_Rnd_A",nil,120],
			["H_Hat_Ushanka_Rnd_B",nil,120],
			["H_Hat_Ushanka_Rnd_C",nil,120],
			["H_Hat_Ushanka_Rnd_D",nil,120],
			
			["H_ALFR_Metal_Gasmask_RU_blk",nil,3500],
			["H_ALFR_Metal_Gasmask_RU_oli",nil,3500],
			["H_ALFR_Metal_Gasmask_RU_grey",nil,3500],
			["H_ALFR_Metal_Gasmask_RU_khk",nil,3500],
			["H_ALFR_Metal_Gasmask_RU_fuckyou",nil,3500],
			["H_ALFR_Metal_Facemask_blk",nil,1750],
			["H_ALFR_Metal_Facemask_oli",nil,1750],
			["H_ALFR_Metal_Facemask_sand",nil,1750],
			["H_ALFR_Metal_Facemask_gry",nil,1750],
			
			["ALE_H_NewEra_Black",nil,1250],
			["ALE_H_NewEra_Cyan",nil,1250],
			["ALE_H_NewEra_Superman",nil,1250],
			["ALE_H_NewEra_Monster",nil,1250],
			["ALE_H_Cowboy_Brown",nil,1250],
			["ALE_H_Cowboy_Black",nil,1250],
			["ALE_H_Cowboy_White",nil,1250],
			["ALE_H_NewEra_Lakers",nil,1250],
			["ALE_H_NewEra_Redsox",nil,1250],
			["kio_vfv_mask","Vendetta",2500],
			["A3L_Legoman","Legokopf",10000],
			["A3L_Halloween_Pumpkinhead","Pumpkin",10000],
			["A3L_Halloween_PredatorMask","Predator",7500],		
			["A3L_Halloween_JigSaw","Jigsaw",7500],
			["jokermask","Clown",7500],
			["A3L_soa_helmet","Biker Helm",4000],	
			["A3L_gangster_hat","Gangster Maske",1000],
			["A3L_Mask","Maske",1000],				
			["A3L_longhairblack","Lang-Haar Schwarz",120],
			["A3L_longhairblond","Lang-Haar Blond",120],
			["A3L_longhairbrown","Lang-Haar Braun",120],
			["A3L_Crown","Krone",120],
			["cowboyhat","Cowboyhut",120],
			["A3L_mexicanhat","Mexican Hut",120],
			["santahat","Weihnachtszipfel",120],
			["A3L_Sombrero","Sombrero",120],
			["turban","Indischer Turban",120],
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
			["A3L_FatHead","Zigarette",25],
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
			["G_Combat",nil,55],
			["TRYK_Beard","Vollbart",275],
			["TRYK_Beard_BW","Vollbart",275],
			["TRYK_Beard_BK2","Vollbart",275],
			["TRYK_Beard_BK3","Vollbart",275],
			["TRYK_Beard3","Vollbart",275],
			["TRYK_Beard_Gr3","Vollbart",275],
			["TRYK_Beard_BK4","Vollbart",275],
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
			["SFG_Tac_chinlessbO","Chinless Beard (Alt)",275]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["A3L_policevest1","FBI Weste",500],
			["Jamie_Sheriff1","Große FBI Weste",1750],
			["k_cut_1","Sinister Sons",2500],
			["k_cut_2","Gold Gunners",2500],
			["k_cut_3","Sons of Anarchy Mitglied",2500],
			["k_cut_4","Sons of Anarchy Chef",2500],
			["k_cut_5","Sons of Outlaws",2500],
			["TRYK_V_tacv1_BK",nil,12500],
			["TRYK_V_tacv1_CY",nil,12500],
			["TRYK_V_tacv1",nil,12500],
			["TRYK_V_tacSVD_BK",nil,15000],
			["TRYK_V_tacSVD_OD",nil,15000],
			["Jamie_Rebell","Fuck U Police",50000]
		];
	};

	//Backpacks
	case 4:
	{
		[
			["domekappa_s",nil,500],
			["domekappa_blau",nil,500],
			["domekappa_p",nil,500],
			["domekappa_t",nil,500],
			["domekappa_w",nil,500],
			["domeadi_s",nil,500],
			["domeadi_blau",nil,500],
			["domeadi_p",nil,500],
			["domeadi_t",nil,500],
			["domeadi_w",nil,500],
			["domenik_s",nil,500],
			["domenik_blau",nil,500],
			["domenik_p",nil,500],
			["domenik_t",nil,500],
			["domenik_w",nil,500],
			["domepu_s",nil,500],
			["domepu_blau",nil,500],
			["domepu_p",nil,500],
			["domepu_t",nil,500],
			["domepu_w",nil,500]
		];
	};
	
};
