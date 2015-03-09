-----------------------------------------
--	ID: 15958
--	Combat Caster's Quiver
--	When used, you will obtain one Combat Caster's Arrow
-----------------------------------------

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
	if (target:getFreeSlotsCount() == 0) then
		result = 308;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addItem(18740);
end;