------------------------------------------- ID: 16047-- Item: Norg Earring-- Enchantment: "Teleport" (Norg)-----------------------------------------require("scripts/globals/teleports");require("scripts/globals/settings");require("scripts/globals/status");------------------------------------------- OnItemCheck-----------------------------------------function onItemCheck(target)    local result = 0;    if (target:isZoneVisited(252) == false) then        result = 56;    end    return result;end;------------------------------------------- OnItemUse-----------------------------------------function onItemUse(target)    norgEarring(target);end;