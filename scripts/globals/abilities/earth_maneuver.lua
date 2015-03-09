-----------------------------------
-- Ability: Earth Maneuver
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onUseAbility
-----------------------------------

function onAbilityCheck(player,target,ability)
    if (player:getWeaponSubSkillType(SLOT_RANGED) == 10 and
        not player:hasStatusEffect(EFFECT_OVERLOAD)) then
        return 0,0;
    else
        return 71,0;
    end
end;

function onUseAbility(player, target, ability)

    local burden = 15;
    if (target:getStat(MOD_VIT) < target:getPet():getStat(MOD_VIT)) then
        burden = 20;
    end

    local overload = target:addBurden(ELE_EARTH-1, burden);
    
    if (overload ~= 0) then
        target:removeAllManeuvers();
        target:addStatusEffect(EFFECT_OVERLOAD, 0, 0, overload);
    else
        local level;
        if (target:getMainJob() == JOB_PUP) then
            level = target:getMainLvl()
        else
            level = target:getSubLvl()
        end
        
        local bonus = 1 + (level/15) + target:getMod(MOD_MANEUVER_BONUS);
        
        if (target:getActiveManeuvers() == 3) then
            target:removeOldestManeuver();
        end
        
        target:addStatusEffect(EFFECT_EARTH_MANEUVER, bonus, 0, 60);
    end
    
    return EFFECT_EARTH_MANEUVER;
end;