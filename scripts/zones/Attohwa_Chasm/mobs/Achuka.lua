-----------------------------------
-- Area: Attohwa Chasm
-- NPC:  Achuka
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:addMod(MOD_ACC,150);
    mob:addMod(MOD_DOUBLE_ATTACK,10)
    mob:addMod(MOD_REGEN, 30);
    mob:addMod(MOD_MDEF, 50);
    mob:addMod(MOD_DEF, -50);
end;

-----------------------------------
-- OnMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGAIN,15);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
    mob:setLocalVar("BattleStart", os.time());
end;

-----------------------------------
-- onMobDisEngage Action
-----------------------------------

function onMobDisEngage(mob, target)
    mob:delStatusEffect(EFFECT_RAGE);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------


function onMobFight(mob, target)
    local BattleStart = mob:getLocalVar("BattleStart");
    local Achuka_2hr_Used = 0;
    if (mob:getLocalVar("Achuka_2hr") ~= nil) then
        Achuka_2hr_Used = mob:getLocalVar("Achuka_2hr");
    end

    if (mob:getHPP() <= 10) then 
        if (Achuka_2hr_Used == 2) then
            mob:useMobAbility(432); -- PD
            mob:setLocalVar("Achuka_2hr", 3);
        end
    elseif (mob:getHPP() <= 30) then 
        if (Achuka_2hr_Used == 1) then
            mob:useMobAbility(432); -- PD
            mob:setLocalVar("Achuka_2hr", 2);
        end
    elseif (mob:getHPP() <= 70) then 
        if (Achuka_2hr_Used == 0) then
            mob:useMobAbility(432); -- PD
            mob:setLocalVar("Achuka_2hr", 1);
        end
    elseif (Achuka_2hr_Used == 3) then
        mob:addStatusEffect(EFFECT_HASTE,200,0,200);
    elseif (os.time() -BattleStart > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
   -- mob:setRespawnTime(math.random((259200),(432000))); -- 3 to 5 days
end;