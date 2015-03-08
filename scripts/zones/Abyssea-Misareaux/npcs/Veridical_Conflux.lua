-----------------------------------
-- Area: Abyssea
-- NPC:  Veridical Conflux
-- Aybssea Teleport NPC
-----------------------------------

package.loaded["scripts/globals/conflux"] = nil;
require("scripts/globals/keyitems");
require("scripts/globals/conflux");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
	local csid, param1, param2, param3, param4, param5, param6, param7, param8 = startConflux(player,npc);
	player:startEvent(csid, param1, param2, param3, param4, param5, param6, param7, param8);
	-- printf("csid:%u, param1:%u, param2:%u, param3:%u, param4:%u, param5:%u, param6:%u, param7:%u, param8:%u", csid, param1, param2, param3, param4, param5, param6, param7, param8);
	
end; 

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
-- printf("Update: CSID: %u",csid);
-- printf("Update: RESULT: %u",option);

	player:updateEvent(1,0,0,0,0,0,0,0);

end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
-- printf("Finish: CSID: %u",csid);
-- printf("Finish: RESULT: %u",option);

	finishConflux(player,csid,option);

end;