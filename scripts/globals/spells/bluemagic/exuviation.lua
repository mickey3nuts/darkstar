-----------------------------------------

-- Spell: Exuviation

-----------------------------------------

require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/bluemagic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	local minCure = 60;
	local effect = target:eraseStatusEffect();
	local divisor = 0.6666;
	local constant = -45;
	local power = getCurePowerOld(caster);

	if(power > 459) then
		divisor = 1.5;
		constant = 144.6666;
	elseif(power > 219) then
		divisor =  2;
		constant = 65;
	end

	local final = getCureFinal(caster,spell,getBaseCureOld(power,divisor,constant),minCure,true);

	final = final + (final * (target:getMod(MOD_CURE_POTENCY_RCVD)/100));
	
	if(target:getAllegiance() == caster:getAllegiance() and (target:getObjType() == TYPE_PC or target:getObjType() == TYPE_MOB)) then
		--Applying server mods....
		final = final * CURE_POWER;
	end
	
	local diff = (target:getMaxHP() - target:getHP());
	if(final > diff) then
		final = diff;
	end
	target:addHP(final);

	target:wakeUp();
	caster:updateEnmityFromCure(target,final);
	spell:setMsg(7);
	return final;
end;