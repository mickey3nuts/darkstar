-------------------------------------------	ID: 16118--	Item: Moogle Cap--  	Enchantment: "Teleport" (Nation)-----------------------------------------require("scripts/globals/teleports");require("scripts/globals/settings");require("scripts/globals/status");------------------------------------------- OnItemCheck-----------------------------------------function onItemCheck(target)	result = 0;	return result;end;------------------------------------------- OnItemUse-----------------------------------------function onItemUse(target)	nomadCap(target);end;