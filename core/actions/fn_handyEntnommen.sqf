/*
	Kommunikationsgeräte entfernen (Spieler - lokal)
*/

hint "Dir wurden deine Kommunikationsgeräte entfernt.";
player setVariable ["tf_unable_to_use_radio", true];
removeAllAssignedItems player;
player setVariable ["tf_unable_to_use_radio", false];