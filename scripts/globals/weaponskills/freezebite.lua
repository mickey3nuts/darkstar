-----------------------------------
-- Freezebite
-- Great Sword weapon skill
-- Skill Level: 100
-- Delivers an ice elemental attack. Damage varies with TP.
-- Aligned with the Snow Gorget & Breeze Gorget.
-- Aligned with the Snow Belt & Breeze Belt.
-- Element: Ice
-- Modifiers: STR:30% ; INT:20%
-- 100%TP    200%TP    300%TP
-- 1.00      1.50      3.00
-----------------------------------
require("scripts/globals/abyssea");
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");
-----------------------------------

function onUseWeaponSkill(player, target, wsID)
	local RedTrigger = player:getVar("RedTrigger");
	if (RedTrigger == 51) then
		WeaknessTriggerRed(player, target, wsID);
	else
		if (math.random(4) == 1) then
			TriggerHintRED(player, target, wsID);
		end
	end

	local params = {};
	params.ftp100 = 1; params.ftp200 = 1.5; params.ftp300 = 3;
	params.str_wsc = 0.3; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.2; params.mnd_wsc = 0.0; params.chr_wsc = 0.0;
	params.ele = ELE_ICE;
	params.skill = SKILL_GSD;
	params.includemab = true;

	if (USE_ADOULIN_WEAPON_SKILL_CHANGES == true) then
		params.str_wsc = 0.4; params.int_wsc = 0.4;
	end

	local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, params);
	damage = damage * WEAPON_SKILL_POWER
	return tpHits, extraHits, criticalHit, damage;

end
