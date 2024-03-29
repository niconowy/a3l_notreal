/*
	File: fn_vehicleColorCfg.sqf
	Authdor: Bryan "Tonic" Boardwine

	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{

	case "IVORY_PRIUS": {
		_path = "\IVORY_Prius\data\";
		_ret =
		[
			["#(argb,8,8,3)color(1,1,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.25098,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0.541176,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0,1,1.0,CO)","civ"],
			[_path + "tex_sports1_co.paa","civ"],
			[_path + "tex_sports2_co.paa","civ"],
			[_path + "tex_sports3_co.paa","civ"],
			[_path + "tex_sports4_co.pa","civ"],
			[_path + "tex_taxi1_co.paa","civ"],
			[_path + "tex_police1_co.paa","cop"],
			[_path + "tex_police2_co.paa","cop"],
			[_path + "tex_ems1_co.paa","med"],
			["#(argb,8,8,3)color(1,1,1,1.0,CO)","cop"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","cop"],
			["#(argb,8,8,3)color(0,0.501961,1,1.0,CO)","cop"],
			["#(argb,8,8,3)color(1,0.501961,1,1.0,CO)","cop"],
			["#(argb,8,8,3)color(0,0.25098,0,1.0,CO)","cop"],
			["#(argb,8,8,3)color(0.541176,0,0,1.0,CO)","cop"],
			["#(argb,8,8,3)color(1,0,1,1.0,CO)","cop"],
			[_path + "tex_sports1_co.paa","cop"],
			[_path + "tex_sports2_co.paa","cop"],
			[_path + "tex_sports3_co.paa","cop"],
			[_path + "tex_sports4_co.pa","cop"],
			[_path + "tex_taxi1_co.paa","cop"]

		];


	};
	
	/*case "A3L_CVPIFPBLB": {
		_path = "\A3L_CVPI\data\";
		_ret =
		[
			[_path + "SkinFG.paa","cop"],
			["A3L_CVPIFPBLBCSO","cop"],
			//[_path + "SkinPDPatrol.paa","cop"],
			["A3L_CVPIFPBLBPD","cop"],
			[_path + "SkinSP.paa","cop"],
			[_path + "SkinSM.paa","cop"]
		];
	};*/

	case "IVORY_R8SPYDER": {
		_path = "\IVORY_R8SPYDER\data\";
		_ret =
		[
			["#(argb,8,8,3)color(1,1,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.25098,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0.541176,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0,1,1.0,CO)","civ"],
			[_path + "audi_r8_livery01_hr.paa","civ"],
			[_path + "audi_r8_livery02_hr.paa","civ"],
			[_path + "audi_r8_livery03_hr.paa","civ"],
			[_path + "audi_r8_livery04_hr.paa","civ"]
		];
	};

	case "IVORY_R8": {
		_path = "\IVORY_R8SPYDER\data\";
		_ret =
		[
			["#(argb,8,8,3)color(1,1,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.25098,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0.541176,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0,1,1.0,CO)","civ"],
			[_path + "audi_r8_livery01_hr.paa","civ"],
			[_path + "audi_r8_livery02_hr.paa","civ"],
			[_path + "audi_r8_livery03_hr.paa","civ"],
			[_path + "audi_r8_livery04_hr.paa","civ"]

		];


	};

	/*so wie hier
	
	case "a3l_bttf": {
		_path = "\A3L_BTTF\A3L_Delorean\";
		_ret =
		[
			[_path + "grey.paa","cop"]
		];
	};*/
	
	case "IVORY_REV": {
		_pathpolice = "\IVORY_REV\data\";
		_ret =
		[
			[_pathpolice + "sheriff.paa","cop"],
			[_pathpolice + "lvpd.paa","cop"]
		];
	};
	
	case "A3L_M3": {
		_path = "\A3L_M3\data\";
		_ret =
		[
			["#(argb,8,8,3)color(0.969,0.969,0.969,1.0,CO)","civ","#(argb,8,8,3)color(0,0,0,0.45,CA)","#(argb,8,8,3)color(0,0,0,0.85,CA)","A3l_m3\data\bmw_m3_e92_wheel_diffuse_00.paa","#(argb,8,8,3)color(0,0,0,0.5,CA)","a3l_m3\data\bmw_m3_e92_misc_diffuse.paa"],
			["#(argb,8,8,3)color(0.043,0.039,0.063,1.0,CO)","civ","#(argb,8,8,3)color(0,0,0,0.45,CA)","#(argb,8,8,3)color(0,0,0,0.85,CA)","A3l_m3\data\bmw_m3_e92_wheel_diffuse_00.paa","#(argb,8,8,3)color(0,0,0,0.5,CA)","a3l_m3\data\bmw_m3_e92_misc_diffuse.paa"],
			["#(argb,8,8,3)color(0.008,0.333,0.545,1.0,CO)","civ","#(argb,8,8,3)color(0,0,0,0.45,CA)","#(argb,8,8,3)color(0,0,0,0.85,CA)","A3l_m3\data\bmw_m3_e92_wheel_diffuse_00.paa","#(argb,8,8,3)color(0,0,0,0.5,CA)","a3l_m3\data\bmw_m3_e92_misc_diffuse.paa"],
			["#(argb,8,8,3)color(0.592,0.055,0.082,1.0,CO)","civ","#(argb,8,8,3)color(0,0,0,0.45,CA)","#(argb,8,8,3)color(0,0,0,0.85,CA)","A3l_m3\data\bmw_m3_e92_wheel_diffuse_00.paa","#(argb,8,8,3)color(0,0,0,0.5,CA)","a3l_m3\data\bmw_m3_e92_misc_diffuse.paa"],
			["#(argb,8,8,3)color(0.969,0.969,0.969,1.0,CO)","civ","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","civ","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)"],
			["#(argb,8,8,3)color(0.831373,0.686275,0.215686,1.0,CO)","civ","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)"],
			[_path + "skin01.paa","civ","#(argb,8,8,3)color(0,0,0,0.45,CA)","#(argb,8,8,3)color(0,0,0,0.85,CA)","A3l_m3\data\bmw_m3_e92_wheel_diffuse_00.paa","#(argb,8,8,3)color(0,0,0,0.5,CA)","a3l_m3\data\bmw_m3_e92_misc_diffuse.paa"],
			[_path + "skin02.paa","civ","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)"],
			["#(argb,8,8,3)color(0.969,0.969,0.969,1.0,CO)","cop","#(argb,8,8,3)color(0,0,0,0.45,CA)","#(argb,8,8,3)color(0,0,0,0.85,CA)","A3l_m3\data\bmw_m3_e92_wheel_diffuse_00.paa","#(argb,8,8,3)color(0,0,0,0.5,CA)","a3l_m3\data\bmw_m3_e92_misc_diffuse.paa"],
			["#(argb,8,8,3)color(0.043,0.039,0.063,1.0,CO)","cop","#(argb,8,8,3)color(0,0,0,0.45,CA)","#(argb,8,8,3)color(0,0,0,0.85,CA)","A3l_m3\data\bmw_m3_e92_wheel_diffuse_00.paa","#(argb,8,8,3)color(0,0,0,0.5,CA)","a3l_m3\data\bmw_m3_e92_misc_diffuse.paa"],
			["#(argb,8,8,3)color(0.008,0.333,0.545,1.0,CO)","cop","#(argb,8,8,3)color(0,0,0,0.45,CA)","#(argb,8,8,3)color(0,0,0,0.85,CA)","A3l_m3\data\bmw_m3_e92_wheel_diffuse_00.paa","#(argb,8,8,3)color(0,0,0,0.5,CA)","a3l_m3\data\bmw_m3_e92_misc_diffuse.paa"],
			["#(argb,8,8,3)color(0.592,0.055,0.082,1.0,CO)","cop","#(argb,8,8,3)color(0,0,0,0.45,CA)","#(argb,8,8,3)color(0,0,0,0.85,CA)","A3l_m3\data\bmw_m3_e92_wheel_diffuse_00.paa","#(argb,8,8,3)color(0,0,0,0.5,CA)","a3l_m3\data\bmw_m3_e92_misc_diffuse.paa"],
			["#(argb,8,8,3)color(0.969,0.969,0.969,1.0,CO)","cop","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","cop","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)"],
			["#(argb,8,8,3)color(0.831373,0.686275,0.215686,1.0,CO)","cop","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)"],
			[_path + "skin01.paa","cop","#(argb,8,8,3)color(0,0,0,0.45,CA)","#(argb,8,8,3)color(0,0,0,0.85,CA)","A3l_m3\data\bmw_m3_e92_wheel_diffuse_00.paa","#(argb,8,8,3)color(0,0,0,0.5,CA)","a3l_m3\data\bmw_m3_e92_misc_diffuse.paa"],
			[_path + "skin02.paa","cop","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,0.99,CA)","#(argb,8,8,3)color(0,0,0,1.0,CO)"]
		];
	};
	
	case "O_Heli_Transport_04_F": {
		_ret =
		[
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","cop","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,1.0,CO)"]
		];
	};
	
	case "O_Heli_Transport_04_covered_F": {
		_ret =
		[
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","cop","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,1.0,CO)"]
		];
	};
	case "O_Heli_Transport_04_medevac_F": {
		_ret =
		[
			["#(argb,8,8,3)color(0.9,0.1,0.1,0.8,CO)","med","#(argb,8,8,3)color(0.9,0.1,0.1,0.8,CO)","#(argb,8,8,3)color(0.9,0.1,0.1,0.8,CO)","#(argb,8,8,3)color(0.9,0.1,0.1,0.8,CO)"]
		];
	};
	case "I_Heli_light_03_unarmed_F": {
		_ret =
		[
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","cop"]

		];
	};

	// Default Cars

	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","cop",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","cop"]
		];
	};

	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"]
		];
	};

	case "C_Offroad_01_F":
	{
		_ret =
		[
			["images\textures\adac_offroad.paa","adac"]
		];
	};

	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"]
		];
	};

	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			["images\textures\fahrschule.paa","adac"]
		];
	};

	case "C_Van_01_box_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};

	case "C_Van_01_transport_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};

	case "B_Quadbike_01_F":
	{
		_ret =
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};

	case "B_Heli_Light_01_F":
	{
		_ret =
		[
			["images\textures\hummingbird_cop.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["images\textures\ems_heli.paa","med"],
			["images\textures\adac_heli.paa","adac"]
		];
	};

	case "C_Heli_Light_01_civil_F":
	{
		_ret =
		[
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["#(argb,8,8,3)color(0.9,0.1,0.1,0.8)","med"]
		];
	};

	case "O_Heli_Light_02_unarmed_F":
	{
		_ret =
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","cop"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["#(argb,8,8,3)color(0.9,0.1,0.1,0.8)","med"]
		];
	};

	case "B_MRAP_01_F":
	{
		_ret =
		[
			["\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa","cop"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "I_Truck_02_covered_F":
	{
		_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "I_Truck_02_transport_F":
	{
		_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop"]
		];
	};

	case "O_Heli_Attack_02_black_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
};

_ret;
