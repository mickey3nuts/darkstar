-----------------------------------
-- Area: La Theine Plateau
-- NPC:  Chocobo Tracks
-- Involved in quest: Chocobo on the Loose!
-- @pos -556 0 523 102
-----------------------------------
package.loaded["scripts/zones/La_Theine_Plateau/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/La_Theine_Plateau/TextIDs");

-----------------------------------
-- onTrade
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger
-----------------------------------

function onTrigger(player,npc)

--	player:startEvent(0x00d1); -- Chocobo on the Loose cs
	player:messageSpecial(CHOCOBO_TRACKS);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);

	if(csid == 0x00d1) then
		player:setVar("ChocoboWounds",1);
	end
end;