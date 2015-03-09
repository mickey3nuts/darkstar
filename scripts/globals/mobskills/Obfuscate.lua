---------------------------------------------
--  Obfuscate
--
--  Description: A blinding wave hits players in an area of effect.
--  Type: Enfeebling
--  Utsusemi/Blink absorb: Ignores shadows
--  Range: 10' radial
--  Notes:
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local typeEffect = EFFECT_BLINDNESS;

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, 20, 0, 120));

	return typeEffect;
end;
