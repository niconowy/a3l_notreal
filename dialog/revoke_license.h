#define BGX 0.35
#define BGY 0.2
#define BGW 0.3

class revokeLicense_Menu
{
	idd = 41000;
	movingEnable = false;
	enableSimulation = true;
	
	class controlsBackground {
		class RscTitleBackground:life_RscText 
		{
			colorBackground[] = {0.18,0.604,0.996,1};
			idc = -1;
			x = BGX;
			y = BGY;
			w = BGW;
			h = (1 / 25);
		};
		
		class MainBackground : life_RscText
		{
			idc = -1;
			colorBackground[] = {0,0,0,0.7};
			x = BGX;
			y = BGY + (11 / 250);
			w = BGW;
			h = 0.6 - (22 / 250);
		};
		
		class Title : life_RscTitle
		{
			colorBackground[] = {0,0,0,0};
			idc = 41001;
			text = "LVPD - LIZENZ MANAGEMENT v2.5";
			x = BGX;
			y = BGY;
			w = BGW;
			h = (1 / 25);
		};
	};
	
	class controls {

		class ButtonClose : life_RscButtonMenu 
		{
			idc = -1;
			text = "Close";
			onButtonClick = "closeDialog 0;";
			x = BGX;
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};

		class ButtonOne : life_RscButtonMenu
		{
			idc = 41002;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "Führerschein";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.07;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonTwo : life_RscButtonMenu
		{
			idc = 41003;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "LKW - Schein";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.12;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonThree : life_RscButtonMenu
		{
			idc = 41004;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "Pilotenschein";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.17;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonFour : life_RscButtonMenu
		{
			idc = 41005;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "Bootsschein";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.22;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonFive : life_RscButtonMenu
		{
			idc = 41006;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "Taucherschein";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.27;
			w = 0.24;
			h = 0.038;
		};
		
		/*class ButtonSix : life_RscButtonMenu
		{
			idc = 41007;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "Taxi License";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.32;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonSeven : life_RscButtonMenu
		{
			idc = 41008;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "All Licenses";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.37;
			w = 0.24;
			h = 0.038;
		};*/

		class ButtonSix : life_RscButtonMenu
		{
			idc = 41007;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "Waffenschein";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.32;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonSeven : life_RscButtonMenu
		{
			idc = 41008;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "Permanent";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.37;
			w = 0.24;
			h = 0.038;
		};
	};
};