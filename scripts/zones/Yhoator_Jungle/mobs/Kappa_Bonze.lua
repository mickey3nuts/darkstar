-----------------------------------
-- Area: Yhoator Jungle
-- NPC:  Kappa Bonze
-- Involved in Quest: True will
-----------------------------------

require("scripts/globals/quests");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath Action
-----------------------------------

function onMobDeath(mob,killer)
	
	if(killer:getQuestStatus(OUTLANDS,TRUE_WILL) == QUEST_ACCEPTED) then
		killer:setVar("trueWillKilledNM",killer:getVar("trueWillKilledNM") + 1);
	end
	
end;