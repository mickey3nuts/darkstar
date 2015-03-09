---------------------------------------------------------------------------------------------------
-- func: poskirin
-- auth: <Unknown> :: Modded by mickey3nuts
-- desc: Move's the player to Kirin's pop location.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player, x, y, z, zone)
            player:setPos('-76', '32', '-4', '0', '178'); -- Kirin // The Shrine Of RuAvitau
end