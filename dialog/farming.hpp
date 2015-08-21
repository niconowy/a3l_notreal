class Life_farming_menu
{
	idd = 40100;
	name="life_farming_menu";
	movingEnabled = 0;
	enableSimulation = 1;
   
	class controlsBackground
	{
		class background: life_RscText
		{
			idc = -1;
			colorBackground[] = {0,0,0,0.7};
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.185625 * safezoneW;
			h = 0.176 * safezoneH;
		};
		
		class background_top: Life_RscText
		{
			idc = -1;
			colorBackground[] = {0,0,0,0.7};
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.044 * safezoneH;
		};
		
		class Text : life_RscTitle
		{
			colorBackground[] = {0,0,0,0};
			idc = 47400;
			text = "$STR_FarmMenu_Title";
			x = 0.59 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.044 * safezoneH;
		};
	};

	class controls
	{
		class button_close: Life_RscButton
		{
			idc = -1;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.536094 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.0567187 * safezoneW;
			h = 0.022 * safezoneH;
		};

		class button_pickaxe: Life_RscButton
		{
			idc = 40111;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "$STR_FarmMenu_PickUse";
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.044 * safezoneH;
		};

		class button_axe: Life_RscButton
		{
			idc = 40112;
			colorBackground[] = {0.18,0.604,0.996,1};
			text = "$STR_FarmMenu_AxeUse";
			x = 0.510312 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.044 * safezoneH;
		};
	};
};