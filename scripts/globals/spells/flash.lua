-----------------------------------------
-- Spell: Flash
-- Temporarily blinds an enemy, greatly lowering its accuracy.
-----------------------------------------
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/abyssea");
-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	if (caster:isPC()) then
		local YellowTrigger = caster:getVar("YellowTrigger");
		if (YellowTrigger == 112) then
			WeaknessTriggerYellow(caster,target,spell);
		else
			if (math.random(4) == 1) then
				TriggerHintYELLOW(caster);
			end
		end
	end
    -- Pull base stats.
    local dINT = (caster:getStat(MOD_MND) - target:getStat(MOD_MND));

    local resist = applyResistance(caster,spell,target,dINT,DIVINE_MAGIC_SKILL, 150);
    local duration = 12 * resist;

    if(resist > 0.0625) then
        if(target:addStatusEffect(EFFECT_FLASH,200,0,duration)) then
            spell:setMsg(236);
        else
            spell:setMsg(75);
        end
    else
        spell:setMsg(85);
    end
	return EFFECT_FLASH;
end;
