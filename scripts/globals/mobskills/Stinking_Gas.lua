---------------------------------------------
--  Stinking Gas
--
--  Description: Lowers Vitality of enemies within range.
--  Type: Magical (Wind)
--
--
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");
---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local typeEffect = EFFECT_VIT_DOWN;

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, 10, 3, 120));

	return typeEffect;
end;
