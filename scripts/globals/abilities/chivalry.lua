<<<<<<< HEAD
-----------------------------------
-- Ability: Chivalry
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- onUseAbility
-----------------------------------

function onAbilityCheck(player,target,ability)
	return 0,0;
end;

function onUseAbility(player, target, ability)
    local merits = player:getMerit(MERIT_CHIVALRY);
--(TP * .5) + ((0.015 * TP) * MND) = MP Gained
	local amount = (target:getTP()*(0.5 * merits)) + ((0.015*target:getTP()) * target:getStat(MOD_MND));
	target:addMP(amount);
	target:setTP(0);
end;
=======
-----------------------------------
-- Ability: Chivalry
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- onUseAbility
-----------------------------------

function onAbilityCheck(player,target,ability)
	return 0,0;
end;

function onUseAbility(player, target, ability)
    local merits = player:getMerit(MERIT_CHIVALRY);
--(TP * .5) + ((0.015 * TP) * MND) = MP Gained
	local amount = ((target:getTP()*(0.5)) + ((0.015*target:getTP()) * target:getStat(MOD_MND))) * ((100 + merits - 5) / 100)
    target:setTP(0);
	return target:addMP(amount);
end;
>>>>>>> c91db6bd4e5c3d13dcfd2882db651fd0129d25c9
