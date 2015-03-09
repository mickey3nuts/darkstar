-----------------------------------------
-- Spell: Banishga 2
-- Deals light damage to an enemy.
-----------------------------------------

require("scripts/globals/magic");
require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	--doDivineBanishNuke(V,M,caster,spell,target,hasMultipleTargetReduction,resistBonus)
	local dmg = doDivineBanishNuke(180,1,caster,spell,target,false,1.0);
	return dmg;
end;