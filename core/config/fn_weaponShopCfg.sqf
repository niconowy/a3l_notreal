#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
	case "med_supplies":
	{
		switch (true) do
		{
			case (playerSide != independent): {"Du bist kein EMS/FDP!"};
			case (__GETC__(life_mediclevel) == 1):
			{
				["Praktikant",
					[
						["cse_bandage_basic",nil,50],
						["cse_packing_bandage",nil,50],
						["cse_bandageElastic",nil,50]
					]
				];
			};
			
			case (__GETC__(life_mediclevel) == 2):
			{
				["Sanitäter",
					[
						["cse_bandage_basic",nil,50],
						["cse_packing_bandage",nil,50],
						["cse_bandageElastic",nil,50],
						["cse_tourniquet",nil,50],
						["cse_quikclot",nil,50],
						//["cse_splint",nil,50], Unnötig gibt keine Knochenbrüche zZ.
						["cse_saline_iv",nil,50],
						["cse_saline_iv_250",nil,50],
						["cse_saline_iv_500",nil,50]
					]
				];
			};
			
			case (__GETC__(life_mediclevel) == 3):
			{
				["Rettungsassistent",
					[
						["cse_bandage_basic",nil,50],
						["cse_packing_bandage",nil,50],
						["cse_bandageElastic",nil,50],
						["cse_saline_iv",nil,50],
						["cse_saline_iv_250",nil,50],
						["cse_saline_iv_500",nil,50],
						["cse_plasma_iv",nil,50],
						["cse_plasma_iv_250",nil,50],
						["cse_plasma_iv_500",nil,50],
						["cse_blood_iv_250",nil,50],
						["cse_blood_iv_500",nil,50],
						["cse_tourniquet",nil,50],
						//["cse_splint",nil,50],
						["cse_morphine",nil,50],
						["cse_epinephrine",nil,50],
						["cse_quikclot",nil,50],
						//["cse_opa",nil,50], Funktioniert nicht
						["cse_nasopharyngeal_tube",nil,50],
						//["cse_chestseal",nil,50], Unnötig
						["cse_surgical_kit",nil,50]
					]
				];
			};
			
			case (__GETC__(life_mediclevel) == 4):
			{
				["Arzt",
					[
						["cse_bandage_basic",nil,50],
						["cse_packing_bandage",nil,50],
						["cse_tourniquet",nil,50],
						//["cse_splint",nil,50],
						["cse_morphine",nil,50],
						["cse_atropine",nil,50],
						["cse_epinephrine",nil,50],
						["cse_plasma_iv",nil,50],
						["cse_plasma_iv_250",nil,50],
						["cse_plasma_iv_500",nil,50],
						["cse_blood_iv",nil,50],
						["cse_blood_iv_250",nil,50],
						["cse_blood_iv_500",nil,50],
						["cse_saline_iv",nil,50],
						["cse_saline_iv_250",nil,50],
						["cse_saline_iv_500",nil,50],
						["cse_quikclot",nil,50],
						["cse_nasopharyngeal_tube",nil,50],
						//["cse_opa",nil,50],
						["cse_bandageElastic",nil,50],
						//["cse_liquidSkin",nil,50], Gibt keine Verbrennungen zZ.
						//["cse_chestseal",nil,50],
						["cse_surgical_kit",nil,50]
					]
				];
			};
			
			case (__GETC__(life_mediclevel) >= 5):
			{
				["Oberarzt bis Chefarzt",
					[
					
						//["FirstAidKit",nil,500],
						//["Medikit",nil,1000],
						
						["cse_bandage_basic",nil,50],
						["cse_packing_bandage",nil,50],
						["cse_bandageElastic",nil,50],
						["cse_tourniquet",nil,50],
						//["cse_splint",nil,50],
						["cse_morphine",nil,50],
						["cse_atropine",nil,50],
						["cse_epinephrine",nil,50],
						["cse_plasma_iv",nil,50],
						["cse_plasma_iv_500",nil,50],
						["cse_plasma_iv_250",nil,50],
						["cse_blood_iv",nil,50],
						["cse_blood_iv_500",nil,50],
						["cse_blood_iv_250",nil,50],
						["cse_saline_iv",nil,50],
						["cse_saline_iv_500",nil,50],
						["cse_saline_iv_250",nil,50],
						["cse_quikclot",nil,50],
						["cse_nasopharyngeal_tube",nil,50],
						//["cse_opa",nil,50],
						//["cse_liquidSkin",nil,50],
						//["cse_chestseal",nil,50],
						["cse_personal_aid_kit",nil,50],
						["cse_surgical_kit",nil,50]
					]
				]
			};
			
			/* case (__GETC__(life_mediclevel) == 6):
			{
				["Chefarzt",
					[
						//["FirstAidKit",nil,500],
						//["Medikit",nil,1000],
						
						["cse_bandage_basic",nil,50],
						["cse_packing_bandage",nil,50],
						["cse_tourniquet",nil,50],
						//["cse_splint",nil,50],
						["cse_morphine",nil,50],
						["cse_atropine",nil,50],
						["cse_epinephrine",nil,50],
						["cse_plasma_iv",nil,50],
						["cse_plasma_iv_500",nil,50],
						["cse_plasma_iv_250",nil,50],
						["cse_blood_iv",nil,50],
						["cse_blood_iv_500",nil,50],
						["cse_blood_iv_250",nil,50],
						["cse_saline_iv",nil,50],
						["cse_saline_iv_500",nil,50],
						["cse_saline_iv_250",nil,50],
						["cse_quikclot",nil,50],
						["cse_nasopharyngeal_tube",nil,50],
						//["cse_opa",nil,50],
						["cse_bandageElastic",nil,50],
						//["cse_liquidSkin",nil,50],
						//["cse_chestseal",nil,50],
						["cse_personal_aid_kit",nil,50],
						["cse_surgical_kit",nil,50]
					]
				]
			}; */
			
		};
	};
	case "med_basic":
	{
		switch (true) do
		{
			case (playerSide != independent): {"Du bist kein EMS/FDP!"};
			default {
				["EMS Grundware",
					[
						["A3L_Extinguisher",nil,350],
						
						["ItemMap",nil,10],
						["ItemWatch",nil,20],
						["ItemCompass",nil,30],
						["ItemGPS",nil,250],
						["Binocular",nil,1250],
						["NVGoggles",nil,5000],
						["ToolKit",nil,3500],
						["tf_anprc148jem_13","Kurzstreckenfunk",100],
						["tf_anprc155","Langstreckenfunk",1000]
						

						//["cse_itemBodyBag",nil,0],
						
						//["cse_waterbottle",nil,0],
						//["cse_canteen",nil,0],
						//["cse_canteen_half",nil,0],
						//["cse_canteen_empty",nil,0],
						//["cse_waterbottle_half",nil,0],
						//["cse_waterbottle_empty",nil,0],
						//["cse_MRE_LambC",nil,0],
						//["cse_MRE_Rice",nil,0],
						//["cse_MRE_CreamTomatoSoup",nil,0],
						//["cse_MRE_CreamChickenSoup",nil,0],
						//["cse_MRE_ChickenTikkaMassala",nil,0],
						//["cse_MRE_SteakVegetables",nil,0],
						//["cse_MRE_MeatballsPasta",nil,0],
						//["cse_MRE_ChickenHerbDumplings",nil,0],
						//["cse_Humanitarian_Ration",nil,0],
						//["cse_US_MRE_ChiliBeans",nil,0],
						//["cse_US_MRE_ChickenFajita",nil,0],
						//["cse_US_MRE_ChickenNoodles",nil,0],
						//["cse_US_MRE_PorkSausageGravy",nil,0],
						//["cse_US_MRE_MedChicen",nil,0],
						//["cse_US_MRE_BeefRoastVeggies",nil,0],
						//["cse_US_MRE_BeefBrisket",nil,0],
						//["cse_US_MRE_MeatballMarinara",nil,0],
						//["cse_US_MRE_BeefStew",nil,0],
						//["cse_US_MRE_ChiliMacaroni",nil,0],
						//["cse_US_MRE_VegetableLasagna",nil,0],
						//["cse_US_MRE_SpicyPennePasta",nil,0],
						//["cse_US_MRE_CheeseTortellini",nil,0],
						//["cse_US_MRE_Ratatouille",nil,0],
						//["cse_US_MRE_MexicanStyleChickenStew",nil,0],
						//["cse_US_MRE_PorkRib",nil,0],
						//["cse_US_MRE_MapleSausage",nil,0],
						//["cse_US_MRE_BeefRavioli",nil,0],
						//["cse_US_MRE_SloppyJoe",nil,0],
						//["cse_US_MRE_SpaghettiMeatSauce",nil,0],
						//["cse_US_MRE_SpaghettiMeatSauce",nil,0],
						//["cse_US_MRE_LemonPepperTuna",nil,0],
						//["cse_US_MRE_AsianBeefStrips",nil,0],
						//["cse_US_MRE_ChickenPestoPasta",nil,0],
						//["cse_US_MRE_SouthwestStyleBeefBlackBeans",nil,0],
						//["cse_mre_c_ration",nil,0]
					]
				];
			};
		};
	};
	
	case "adac_basic":
	{
		switch (true) do
		{
			case (playerSide != east): {"Du bist kein IPD!"};
			default {
				["IPD Laden",
					[
						["ItemMap",nil,30],
						["ItemWatch",nil,20],
						["ItemCompass",nil,10],
						["ItemGPS",nil,250],
						["Binocular",nil,1250],
						["NVGoggles",nil,5000],
						["ToolKit",nil,3500],
						//["FirstAidKit",nil,1500],
						["tf_anprc148jem_13","Kurzstreckenfunk",100],
						["tf_anprc155","Langstreckenfunk",1000],
						["cse_bandage_basic",nil,1425]
					]
				];
			};
		};
	};
	
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein LV-Police Officer!"};
			case (__GETC__(life_coplevel) == 0): {"Dir fehlt die Berechtigung den Polizeishop zu nutzen!"};
			case (__GETC__(life_coplevel) == 1):
			{
				["Rekrut",
					[
						["A3L_Glock17",nil,2600],
						["A3L_Glock17mag",nil,300],
						
						["Radar_Gun","Radarpistole",1000],
						
						["Taser_26","Taser",1000],
						["26_cartridge",nil,50],
						
						//["FirstAidKit",nil,1500],
						["ItemMap",nil,10],
						["ItemWatch",nil,20],
						["ItemCompass",nil,30],
						["ToolKit",nil,3500],
						["Binocular",nil,150],
						["Rangefinder",nil,150],
						["ItemGPS",nil,250],
						["NVGoggles_OPFOR",nil,2000],
						["tf_anprc148jem_13","Kurzstreckenfunk",100],
						["tf_anprc155","Langstreckenfunk",1000],
						["cse_epinephrine",nil,1500],
						["cse_bandage_basic",nil,1425]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 2):
			{
				["Officer",
					[
						["A3L_MP5",nil,4500],
						["A3L_MP5mag",nil,500],
						
						["A3L_Glock17",nil,2600],
						["A3L_Glock17mag",nil,300],
						["RH_kimber",nil,2600],
						["RH_7Rnd_45cal_m1911",nil,300],
						["RH_usp",nil,2600],
						["RH_12Rnd_45cal_usp",nil,300],
						
						["Radar_Gun","Radarpistole",1000],
						
						["Taser_26","Taser",1000],
						["26_cartridge",nil,50],
						
						["A3L_RedDot",nil,500],
						
						//["FirstAidKit",nil,1500],
						["ItemMap",nil,10],
						["ItemWatch",nil,20],
						["ItemCompass",nil,30],
						["ToolKit",nil,3500],
						["Binocular",nil,150],
						["Rangefinder",nil,150],
						["ItemGPS",nil,250],
						["NVGoggles_OPFOR",nil,2000],
						["tf_anprc148jem_13","Kurzstreckenfunk",100],
						["tf_anprc155","Langstreckenfunk",1000],
						["cse_epinephrine",nil,1500],
						["cse_bandage_basic",nil,1425]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 3):
			{
				["Detective",
					[
						["RH_Mk12mod1",nil,10000],
						["RH_30Rnd_556x45_Mk262",nil,750],
						["RH_M16A3",nil,8000],
						["RH_m4",nil,8000],
						["30Rnd_556x45_Stanag",nil,650],
						["A3L_M4A3",nil,8000],
						["A3L_M4mag",nil,650],
						
						["A3L_MP5",nil,4500],
						["A3L_MP5mag",nil,500],	
						
						["A3L_Glock17",nil,2600],
						["A3L_Glock17mag",nil,300],
						["RH_kimber",nil,2600],
						["RH_7Rnd_45cal_m1911",nil,300],
						["RH_usp",nil,2600],
						["RH_12Rnd_45cal_usp",nil,300],
						["RH_fnp45t",nil,2600],
						["RH_15Rnd_45cal_fnp",nil,300],
						["RH_g18",nil,2600],
						["RH_19Rnd_9x19_g18",nil,300],
						
						["Radar_Gun","Radarpistole",1000],
						
						["Taser_26","Taser",1000],
						["26_cartridge",nil,50],
						
						["A3L_CCO",nil,500],
						["A3L_RedDot",nil,500],
						["A3L_M4Flashlight",nil,500],
						["optic_Hamr",nil,500],
						["optic_DMS",nil,500],
						["RH_qdss_nt4",nil,500],
						["A3L_MP5Silencer",nil,500],
						["gign_shield","Einsatzschild",10000],
						//["R3F_M4S90",nil,2500],
						//["R3F_7Rnd_M4S90",nil,300],
						["R3F_AIMPOINT",nil,1300],
						
						
						
						
						//["FirstAidKit",nil,1500],
						["ItemMap",nil,10],
						["ItemWatch",nil,20],
						["ItemCompass",nil,30],
						["ToolKit",nil,3500],
						["Binocular",nil,150],
						["Rangefinder",nil,150],
						["ItemGPS",nil,250],
						["NVGoggles_OPFOR",nil,2000],
						["tf_anprc148jem_13","Kurzstreckenfunk",100],
						["tf_anprc155","Langstreckenfunk",1000],
						["cse_epinephrine",nil,1500],
						["cse_bandage_basic",nil,1425]
					
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 4):
			{
				["Sergeant",
					[
						["RH_Mk12mod1",nil,10000],
						["RH_30Rnd_556x45_Mk262",nil,750],
						["RH_M16A3",nil,8000],
						["RH_m4",nil,8000],
						["30Rnd_556x45_Stanag",nil,650],
						["A3L_M4A3",nil,8000],
						["A3L_M4mag",nil,650],
						
						["A3L_MP5",nil,4500],
						["A3L_MP5mag",nil,500],	
						
						["A3L_Glock17",nil,2600],
						["A3L_Glock17mag",nil,300],
						["RH_kimber",nil,2600],
						["RH_7Rnd_45cal_m1911",nil,300],
						["RH_usp",nil,2600],
						["RH_12Rnd_45cal_usp",nil,300],
						["RH_fnp45t",nil,2600],
						["RH_15Rnd_45cal_fnp",nil,300],
						["RH_g18",nil,2600],
						["RH_19Rnd_9x19_g18",nil,300],
						
						["Radar_Gun","Radarpistole",1000],
						
						["Taser_26","Taser",1000],
						["26_cartridge",nil,50],
						
						["A3L_CCO",nil,500],
						["A3L_RedDot",nil,500],
						["A3L_M4Flashlight",nil,500],
						["optic_Hamr",nil,500],
						["optic_DMS",nil,500],
						["RH_qdss_nt4",nil,500],
						["A3L_MP5Silencer",nil,500],
						["gign_shield","Einsatzschild",10000],
						//["R3F_M4S90",nil,2500],
						//["R3F_7Rnd_M4S90",nil,300],
						["R3F_AIMPOINT",nil,1300],
						
						
						
						
						//["FirstAidKit",nil,1500],
						["ItemMap",nil,10],
						["ItemWatch",nil,20],
						["ItemCompass",nil,30],
						["ToolKit",nil,3500],
						["Binocular",nil,150],
						["Rangefinder",nil,150],
						["ItemGPS",nil,250],
						["NVGoggles_OPFOR",nil,2000],
						["tf_anprc148jem_13","Kurzstreckenfunk",100],
						["tf_anprc155","Langstreckenfunk",1000],
						["cse_epinephrine",nil,1500],
						["cse_bandage_basic",nil,1425]
					
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 5):
			{
				["Lieutenant",
					[
						["RH_Mk12mod1",nil,10000],
						["RH_30Rnd_556x45_Mk262",nil,750],
						["RH_M16A3",nil,8000],
						["RH_m4",nil,8000],
						["30Rnd_556x45_Stanag",nil,650],
						["A3L_M4A3",nil,8000],
						["A3L_M4mag",nil,650],
						
						["A3L_MP5",nil,4500],
						["A3L_MP5mag",nil,500],	
						
						["A3L_Glock17",nil,2600],
						["A3L_Glock17mag",nil,300],
						["RH_kimber",nil,2600],
						["RH_7Rnd_45cal_m1911",nil,300],
						["RH_usp",nil,2600],
						["RH_12Rnd_45cal_usp",nil,300],
						["RH_fnp45t",nil,2600],
						["RH_15Rnd_45cal_fnp",nil,300],
						["RH_g18",nil,2600],
						["RH_19Rnd_9x19_g18",nil,300],
						
						["Radar_Gun","Radarpistole",1000],
						
						["Taser_26","Taser",1000],
						["26_cartridge",nil,50],
						
						["A3L_CCO",nil,500],
						["A3L_RedDot",nil,500],
						["A3L_M4Flashlight",nil,500],
						["optic_Hamr",nil,500],
						["optic_DMS",nil,500],
						["RH_qdss_nt4",nil,500],
						["A3L_MP5Silencer",nil,500],
						["gign_shield","Einsatzschild",10000],
						//["R3F_M4S90",nil,2500],
						//["R3F_7Rnd_M4S90",nil,300],
						["R3F_AIMPOINT",nil,1300],
						
						
						
						
						//["FirstAidKit",nil,1500],
						["ItemMap",nil,10],
						["ItemWatch",nil,20],
						["ItemCompass",nil,30],
						["ToolKit",nil,3500],
						["Binocular",nil,150],
						["Rangefinder",nil,150],
						["ItemGPS",nil,250],
						["NVGoggles_OPFOR",nil,2000],
						["tf_anprc148jem_13","Kurzstreckenfunk",100],
						["tf_anprc155","Langstreckenfunk",1000],
						["cse_epinephrine",nil,1500],
						["cse_bandage_basic",nil,1425]
					
					]
				];
			};
			
			case (__GETC__(life_coplevel) >= 6):
			{
				["Captain bis Chief of Department",
					[
						//["prpl_benelli_14_pgs",nil,15000], Zu Op
						//["prpl_benelli_muzzle_break",nil,15000], Zu Op
						//["prpl_6Rnd_12Gauge_Pellets",nil,250], Zu Op
						
						["RH_Mk12mod1",nil,10000],
						["RH_30Rnd_556x45_Mk262",nil,750],
						["RH_M16A3",nil,8000],
						["RH_m4",nil,8000],
						["30Rnd_556x45_Stanag",nil,650],
						["A3L_M4A3",nil,8000],
						["A3L_M4mag",nil,650],
						
						["A3L_MP5",nil,4500],
						["A3L_MP5mag",nil,500],	
						
						["A3L_Glock17",nil,2600],
						["A3L_Glock17mag",nil,300],
						["RH_kimber",nil,2600],
						["RH_7Rnd_45cal_m1911",nil,300],
						["RH_usp",nil,2600],
						["RH_12Rnd_45cal_usp",nil,300],
						["RH_fnp45t",nil,2600],
						["RH_15Rnd_45cal_fnp",nil,300],
						["RH_g18",nil,2600],
						["RH_19Rnd_9x19_g18",nil,300],
						
						["Radar_Gun","Radarpistole",1000],
						
						["Taser_26","Taser",1000],
						["26_cartridge",nil,50],
						
						["A3L_CCO",nil,500],
						["A3L_RedDot",nil,500],
						["A3L_M4Flashlight",nil,500],
						["optic_Hamr",nil,500],
						["optic_DMS",nil,500],
						["RH_qdss_nt4",nil,500],
						["A3L_MP5Silencer",nil,500],
						["gign_shield","Einsatzschild",10000],
						//["R3F_M4S90",nil,2500],
						//["R3F_7Rnd_M4S90",nil,300],
						["R3F_AIMPOINT",nil,1300],
						
						//["FirstAidKit",nil,1500],
						["ItemMap",nil,10],
						["ItemWatch",nil,20],
						["ItemCompass",nil,30],
						["ToolKit",nil,3500],
						["Binocular",nil,150],
						["Rangefinder",nil,150],
						["ItemGPS",nil,250],
						["NVGoggles_OPFOR",nil,2000],
						["tf_anprc148jem_13","Kurzstreckenfunk",100],
						["tf_anprc155","Langstreckenfunk",1000],
						["cse_epinephrine",nil,1500],
						["cse_bandage_basic",nil,1425]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenausbildung!"};
			case ((license_civ_rebel)):
			{
				["Muhli's Outlaw Laden",
					[
						["cse_epinephrine",nil,50000],
						["cse_morphine",nil,50000],
						["RH_Deaglem",nil,27500],
						["RH_demz",nil,7500],
						["optic_Yorris",nil,5000],
						
						//["RH_tec9",nil,35000], Zu Op
						//["RH_tecsd",nil,1500], Zu Op
						//["RH_32Rnd_9x19_tec",nil,500], Zu Op
						//["R3F_HK417M","HK4 17M",225000],
						//["R3F_20Rnd_762x51_HK417","HK4 17 Munition",3000],
						["RH_7Rnd_50_AE",nil,750],
						["A3L_SA61",nil,45000],
						["A3L_SA61mag",nil,900],
						["A3L_UZI",nil,37250],
						["A3L_UZImag",nil,950],
						["RH_muzi",nil,35000],
						["RH_30Rnd_9x19_UZI",nil,800],

/*						["A3L_AK47",nil,120000],
						["A3L_AK47mag",nil,2500],
						
						["A3L_AK47s",nil,135000],											
						["A3L_AK47smag",nil,2750],		

						["A3L_AKS74",nil,190000],
						["A3L_AK47sMag",nil,2750],
*/						
						["RH_M4sbr_b",nil,200000],
						["30Rnd_556x45_Stanag",nil,2800],
						["optic_Hamr",nil,500],

						["RH_ar10",nil,225000],
						["RH_20Rnd_762x51_AR10",nil,3000],

						["A3L_RedDot",nil,8500],
						["RH_Delft",nil,8500],
						["RH_qdss_nt4",nil,12500],
						["A3L_CCO",nil,12500],

						["A3L_CZ550",nil,150000],
						["A3L_CZ550mag",nil,50],
						["A3L_CZ550Scope",nil,30000],

						["arifle_SDAR_F","Turtle Harpoon",50000],
						["20Rnd_556x45_UW_mag","Underwater magazine",1500],

						//["FirstAidKit",nil,2250],
						["ItemMap",nil,30],
						["ItemWatch",nil,40],
						["ItemCompass",nil,50],
						["ToolKit",nil,6000],
						["Binocular",nil,250],
						["ItemGPS",nil,250],
						["NVGoggles_OPFOR",nil,10000],

						["tf_fadak","Kurzstreckenfunk",100],
						["tf_mr3000","Langstreckenfunk",5000],
						["cse_bandage_basic",nil,1425]
					]
				];
			};
		};
	};

	case "don_reb":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (__GETC__(life_donator) == 0): {"Du bist kein Donator!"};
			case (__GETC__(life_donator) == 1):
			{["Muhli's Militärwaffen",
				[
					["RH_Deaglem",nil,23375],
					["RH_demz",nil,6375],
					["optic_Yorris",nil,4250],
					
					["RH_7Rnd_50_AE",nil,635],
					//["RH_tec9",nil,29750], Zu Op
					//["RH_tecsd",nil,1275], Zu Op
					//["R3F_HK417M","HK4 17M",191250],
					//["R3F_20Rnd_762x51_HK417","HK4 17 Munition",2550],
					["A3L_SA61",nil,38250],
					["A3L_SA61mag",nil,765],
					["A3L_UZI",nil,31660],
					["A3L_UZImag",nil,805],
					["RH_muzi",nil,29750],
					["RH_30Rnd_9x19_UZI",nil,680],
/*					
					["A3L_AK47",nil,102000],
					["A3L_AK47mag",nil,2125],
					
					["A3L_AK47s",nil,114750],
					["A3L_AK47sgold",nil,148750],											
					["A3L_AK47smag",nil,2335],		

					["A3L_AKS74",nil,161500],
					["A3L_AK47sMag",nil,2335],
*/					
					["RH_M4sbr_b",nil,170000],
					["30Rnd_556x45_Stanag",nil,2380],
					["optic_Hamr",nil,425],
					
					["RH_ar10",nil,191250],
					["RH_20Rnd_762x51_AR10",nil,2550],
					
					["A3L_RedDot",nil,7225],
					["RH_Delft",nil,7225],
					["RH_qdss_nt4",nil,10625],
					["A3L_CCO",nil,10625],
					
					["A3L_CZ550",nil,127500],
					["A3L_CZ550mag",nil,40],
					["A3L_CZ550Scope",nil,25500],
					
					["arifle_SDAR_F","Turtle Harpoon",42500],
					["20Rnd_556x45_UW_mag","Underwater magazine",1275],
					
					//["FirstAidKit",nil,2000],
					["ToolKit",nil,6000],
					["Binocular",nil,210],
					["ItemGPS",nil,210],
					["NVGoggles_OPFOR",nil,8500],
					
					["tf_fadak","Kurzstreckenfunk",80],
					["tf_mr3000","Langstreckenfunk",4250],
					["cse_bandage_basic",nil,1425]
					]
				];
			};
			
			case (__GETC__(life_donator) == 3):
			{["Muhli's Militärwaffen",
				[
					["RH_Deaglem",nil,23375],
					["RH_demz",nil,6375],
					["optic_Yorris",nil,4250],
					
					["RH_7Rnd_50_AE",nil,635],
					//["RH_tec9",nil,29750], Zu Op
					//["RH_tecsd",nil,1275], Zu Op
					//["R3F_HK417M","HK4 17M",191250],
					//["R3F_20Rnd_762x51_HK417","HK4 17 Munition",2550],
					["A3L_SA61",nil,38250],
					["A3L_SA61mag",nil,765],
					["A3L_UZI",nil,31660],
					["A3L_UZImag",nil,805],
					["RH_muzi",nil,29750],
					["RH_30Rnd_9x19_UZI",nil,680],
					
/*					["A3L_AK47",nil,102000],
					["A3L_AK47mag",nil,2125],
					
					["A3L_AK47s",nil,114750],
					["A3L_AK47sgold",nil,148750],											
					["A3L_AK47smag",nil,2335],		

					["A3L_AKS74",nil,161500],
					["A3L_AK47sMag",nil,2335],
*/					
					["RH_M4sbr_b",nil,170000],
					["30Rnd_556x45_Stanag",nil,2380],
					["optic_Hamr",nil,425],
					
					["RH_ar10",nil,191250],
					["RH_20Rnd_762x51_AR10",nil,2550],
					
					["A3L_RedDot",nil,7225],
					["RH_Delft",nil,7225],
					["RH_qdss_nt4",nil,10625],
					["A3L_CCO",nil,10625],
					
					["A3L_CZ550",nil,127500],
					["A3L_CZ550mag",nil,40],
					["A3L_CZ550Scope",nil,25500],
					
					["arifle_SDAR_F","Turtle Harpoon",42500],
					["20Rnd_556x45_UW_mag","Underwater magazine",1275],
					
					//["FirstAidKit",nil,2000],
					["ToolKit",nil,6000],
					["Binocular",nil,210],
					["ItemGPS",nil,210],
					["NVGoggles_OPFOR",nil,8500],
					
					["tf_fadak","Kurzstreckenfunk",80],
					["tf_mr3000","Langstreckenfunk",4250],
					["cse_bandage_basic",nil,1425]
				]
			 ];
			};
			
			case (__GETC__(life_donator) == 5):
			{["Muhli's Militärwaffen",
				[
					["RH_Deaglem",nil,23375],
					["RH_demz",nil,6375],
					["optic_Yorris",nil,4250],
					
					["RH_7Rnd_50_AE",nil,635],
					//["RH_tec9",nil,29750], Zu Op
					//["RH_tecsd",nil,1275], Zu Op
					//["R3F_HK417M","HK4 17M",191250],
					//["R3F_20Rnd_762x51_HK417","HK4 17 Munition",2550],
					["A3L_SA61",nil,38250],
					["A3L_SA61mag",nil,765],
					["A3L_UZI",nil,31660],
					["A3L_UZImag",nil,805],
					["RH_muzi",nil,29750],
					["RH_30Rnd_9x19_UZI",nil,680],
					
/*					["A3L_AK47",nil,102000],
					["A3L_AK47mag",nil,2125],
					
					["A3L_AK47s",nil,114750],
					["A3L_AK47sgold",nil,148750],											
					["A3L_AK47smag",nil,2335],		

					["A3L_AKS74",nil,161500],
					["A3L_AK47sMag",nil,2335],
*/					
					["RH_M4sbr_b",nil,170000],
					["30Rnd_556x45_Stanag",nil,2380],
					["optic_Hamr",nil,425],
					
					["RH_ar10",nil,191250],
					["RH_20Rnd_762x51_AR10",nil,2550],
					
					["A3L_RedDot",nil,7225],
					["RH_Delft",nil,7225],
					["RH_qdss_nt4",nil,10625],
					["A3L_CCO",nil,10625],
					
					["A3L_CZ550",nil,127500],
					["A3L_CZ550mag",nil,40],
					["A3L_CZ550Scope",nil,25500],
					
					["arifle_SDAR_F","Turtle Harpoon",42500],
					["20Rnd_556x45_UW_mag","Underwater magazine",1275],
					
					//["FirstAidKit",nil,2000],
					["ToolKit",nil,6000],
					["Binocular",nil,210],
					["ItemGPS",nil,210],
					["NVGoggles_OPFOR",nil,8500],
					
					["tf_fadak","Kurzstreckenfunk",80],
					["tf_mr3000","Langstreckenfunk",4250],
					["cse_bandage_basic",nil,1425]
				]
			 ];
			};
			default {"Du bist kein Donator!"}; //Opfer lol
		};
	};

	case "lakeistani_reb":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du besitzt keine Rebellenausbildung."};
			case ((license_civ_rebel)):
			{
				["Lakeistani's Outback Weapons",
					[
						["hlc_rifle_ak47",nil,185000],
						["hlc_30Rnd_762x39_b_ak",nil,2725],
						["hlc_rifle_aks74u",nil,175000],
						["hlc_rifle_ak12",nil,155000],
						["hlc_30Rnd_545x39_B_AK",nil,2725],
						["hlc_rifle_akm",nil,195000],
						["hlc_30Rnd_762x39_b_ak",nil,2725],
						["hlc_rifle_aek971",nil,180000],
						["hlc_30Rnd_545x39_B_AK",nil,2725],

						["hlc_optic_kobra",nil,5000]						
					]
				];
			};
		};
	};  

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du besitzt keinen gültigen Waffenschein!"};
			case ((license_civ_gun)):
			{
				["Billy Joe's Feuerwaffen",
					[
						["A3L_Glock17",nil,15600],
						["A3L_Glock17mag",nil,500],
						["A3L_M9",nil,17200],
						["A3L_M9mag",nil,400],
						["A3L_makarov",nil,14500],
						["A3L_makarovmag",nil,250],
						["RH_mak",nil,15000],
						["RH_8Rnd_9x18_Mak",nil,250],
						["RH_fn57_t",nil,16500],
						["RH_20Rnd_57x28_FN",nil,250],
						["RH_cz75",nil,14750],
						["RH_16Rnd_9x19_CZ",nil,250],	
						["RH_m9c",nil,15000],
						["RH_15Rnd_9x19_M9",nil,250],
						["RH_p226s",nil,12500],
						["RH_15Rnd_9x19_SIG",nil,250],
						["RH_vp70",nil,14500],
						["RH_18Rnd_9x19_VP",nil,250],
						["A3L_1911",nil,18000],
						["A3L_1911mag",nil,600],
						["A3L_Taurus",nil,32500],
						["A3L_Taurusmag",nil,970]
					]
				];
			};
		};
	};
	
   	case "gun_illegal":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du besitzt keinen gültigen Waffenschein!"};
			case ((license_civ_gun)):
			{
				["Billy Joe's Hinterzimmer",
					[
						["A3L_1911",nil,28000],
						["A3L_1911mag",nil,750],
						["RH_vp70",nil,14500],
						["RH_18Rnd_9x19_VP",nil,250],
						["A3L_Taurus",nil,36500],
						["A3L_Taurusmag",nil,1070]
					]
				];
			};
		};
	};
	
	case "don_gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (__GETC__(life_donator) == 0): {"Du bist kein Donator!"};
			case (__GETC__(life_donator) == 1):
			{["Spezielle Waffen",
					[
						["A3L_Glock17",nil,13260],
						["A3L_Glock17mag",nil,425],
						["A3L_M9",nil,14620],
						["A3L_M9mag",nil,340],
						["A3L_makarov",nil,12325],
						["A3L_makarovmag",nil,210],
						["RH_mak",nil,12750],
						["RH_8Rnd_9x18_Mak",nil,210],
						["RH_fn57_t",nil,14025],
						["RH_20Rnd_57x28_FN",nil,210],
						["RH_cz75",nil,12535],
						["RH_16Rnd_9x19_CZ",nil,210],	
						["RH_m9c",nil,12750],
						["RH_15Rnd_9x19_M9",nil,210],
						["RH_p226s",nil,10625],
						["RH_15Rnd_9x19_SIG",nil,210],
						["RH_vp70",nil,12325],
						["RH_18Rnd_9x19_VP",nil,210],
						["A3L_1911",nil,15300],
						["A3L_1911mag",nil,510],
						["A3L_Taurus",nil,27625],
						["A3L_TaurusGold",nil,30000],
						["A3L_Taurusmag",nil,820]
					]
				];
			};
			
			case (__GETC__(life_donator) == 3):
			{["Spezielle Waffen",
					[
						["A3L_Glock17",nil,13260],
						["A3L_Glock17mag",nil,425],
						["A3L_M9",nil,14620],
						["A3L_M9mag",nil,340],
						["A3L_makarov",nil,12325],
						["A3L_makarovmag",nil,210],
						["RH_mak",nil,12750],
						["RH_8Rnd_9x18_Mak",nil,210],
						["RH_fn57_t",nil,14025],
						["RH_20Rnd_57x28_FN",nil,210],
						["RH_cz75",nil,12535],
						["RH_16Rnd_9x19_CZ",nil,210],	
						["RH_m9c",nil,12750],
						["RH_15Rnd_9x19_M9",nil,210],
						["RH_p226s",nil,10625],
						["RH_15Rnd_9x19_SIG",nil,210],
						["RH_vp70",nil,12325],
						["RH_18Rnd_9x19_VP",nil,210],
						["A3L_1911",nil,15300],
						["A3L_1911mag",nil,510],
						["A3L_Taurus",nil,27625],
						["A3L_TaurusGold",nil,30000],
						["A3L_Taurusmag",nil,820]
					]
				];
			};
			
			case (__GETC__(life_donator) == 5):
			{["Spezielle Waffen",
					[
						["A3L_Glock17",nil,13260],
						["A3L_Glock17mag",nil,425],
						["A3L_M9",nil,14620],
						["A3L_M9mag",nil,340],
						["A3L_makarov",nil,12325],
						["A3L_makarovmag",nil,210],
						["RH_mak",nil,12750],
						["RH_8Rnd_9x18_Mak",nil,210],
						["RH_fn57_t",nil,14025],
						["RH_20Rnd_57x28_FN",nil,210],
						["RH_cz75",nil,12535],
						["RH_16Rnd_9x19_CZ",nil,210],	
						["RH_m9c",nil,12750],
						["RH_15Rnd_9x19_M9",nil,210],
						["RH_p226s",nil,10625],
						["RH_15Rnd_9x19_SIG",nil,210],
						["RH_vp70",nil,12325],
						["RH_18Rnd_9x19_VP",nil,210],
						["A3L_1911",nil,15300],
						["A3L_1911mag",nil,510],
						["A3L_Taurus",nil,27625],
						["A3L_TaurusGold",nil,30000],
						["A3L_Taurusmag",nil,820]
					]
				];
			};
			default {"Du bist kein Donator."};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			default
			{
				["Hideout Armament",
					[
						["A3L_Glock17",nil,17600],
						["A3L_Glock17mag",nil,500],
						
						["A3L_UZI",nil,37250],
						["A3L_UZImag",nil,950]												
					]
				];
			};
		};
	};
   
	case "genstore":
	{
		["Altis General Store",
			[
				["ItemMap",nil,30],
				["ItemWatch",nil,40],
				["ItemCompass",nil,50],
				//["FirstAidKit",nil,2500],
				["tf_fadak","Kurzstreckenfunk",900],
				["Binocular",nil,1250],
				["ItemGPS",nil,250],
				["ToolKit",nil,6000],
				["NVGoggles",nil,7500],
				["A3L_sign",nil,5000],
				["A3L_sign2",nil,5000],
				["Tv_Camera",nil,2000],
				["cse_bandage_basic",nil,1425]
			]
		];
	};
};
