-----------------------------------------
-- Spell: Curaga
-- Restores HP of all party members within area of effect.
-----------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	local minCure = 60;

	local divisor = 1;
	local constant = 20;
	local power = getCurePowerOld(caster);
	if(power > 170) then
		divisor = 35.6666;
		constant = 87.62;
	elseif(power > 110) then
		divisor =  2;
		constant = 47.5;
	end

	local final = getCureFinal(caster,spell,getBaseCureOld(power,divisor,constant),minCure,false);

	final = final + (final * (target:getMod(MOD_CURE_POTENCY_RCVD)/100));
	
	--Applying server mods....
	final = final * CURE_POWER;
	
	local diff = (target:getMaxHP() - target:getHP());
	if(final > diff) then
		final = diff;
	end
	target:addHP(final);

	target:wakeUp();
	caster:updateEnmityFromCure(target,final);
	
	spell:setMsg(367);
	
	return final;
end;