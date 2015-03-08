--------------------------------------------------------------
-- func: @shop
-- auth: TeoTwawki (aka Forgottenandlost)
-- desc: opens a custom shop anywhere in the world
--------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};


-- Notes:
--
-- ALWAYS comment your additions!


function onTrigger(player,page)
    if (page == 0 or page == nil) then
        player:PrintToPlayer( "1: MogDonalds, 2: Meds, 3: Ammo, 4: Ninja Tools, 5: Pet Store, 6: HQ Crystal"");
        -- Edit and uncomment next line if you want more pages.
        -- player:PrintToPlayer( "7: ??, 8: ??, 9: ??");
    elseif (page == 1) then -- Would you like fries with that?
        local stock_1 =
        {
            5142,   1,   -- Bison Steak
			5764,   1,   -- Black Curry Bun +1
			5718,   1,   -- Cream Puff
			5610,   1,   -- Hellsteak +1
			5744,   1,   -- Marinara Pizza +1
			4574,   1,   -- Meat Chiefkabob
			4303,   1,   -- Persikos Au Lait
			5765,   1,   -- Red Curry Bun +1
			5163,   1,   -- Plate of Sole Sushi +1
			4279,   1,   -- Tavnazian Salad
			4558,   1,   -- Yagudo Drink            
        };
        showShop(player, STATIC, stock_1);

    elseif (page == 2) then -- Medicine chest.
        local stock_2 =
        {
            4148,   1,   -- Antidote (Removes Poison)
            4150,   1,   -- Eye Drops (Removes Blindness)
            4151,   1,   -- Echo drops (Removes Silence)
            4112,   1,   -- Potion (Restores 50 HP)
            4128,   1,   -- Ether (Restores 20 MP)
			4154,   1,   -- Holy Water (Small chance to remove Doom effect)
			4164,   1,   -- Prism Powder (Invisible effect)
			4165,   1,   -- Silent Oil (Sneak effect)
			4213,   1,   -- Icarus Wing (100% TP)			
        };
        showShop(player, STATIC, stock_2);

    elseif (page == 3) then -- Ammo.
        local stock_3 =
        {
            5819,    1,   -- Antlion Arrow Quiver
			4224,    1,   -- Demon Arrow Quiver
			5332,    1,   -- Kabura Arrow Quiver
			4223,    1,   -- Scorpion Arrow Quiver
			6201,    1,   -- Tulfaire Arrow Quiver	
			5335,    1,   -- Acid Bolt Quiver
			5334,    1,   -- Blind Bolt Quiver
			5339,    1,   -- Bloody Bolt Quiver
			4229,    1,   -- Darksteel Bolt Quiver
			5336,    1,   -- Holy Bolt Quiver
			5337,    1,   -- Sleep Bolt Quiver
			5338,    1,   -- Venom Bolt Quiver
			5915,    1,   -- Adaman Bullet Pouch
			5359,    1,   -- Bronze Bullet Pouch
			5363,    1,   -- Bullet Pouch
			5194,    1,   -- Orichalcum Bullet Pouch
			5416,    1,   -- Steel Bullet Pouch
			6209,    1,   -- Titanium Bullet Pouch
        };
        showShop(player, STATIC, stock_3);

    elseif (page == 4) then -- Ninja Tools.
        local stock_4 =
        {
			5869,   1,   -- Chonofuda (toolbag)
			5312,   1,   -- Haraishin (toolbag)
			5867,   1,   -- Inoshishinofuda (toolbag)
			5317,   1,   -- Sairui-ran (toolbag)
			5417,   1,   -- Sanjaku-tenugui (toolbag)
			5314,   1,   -- Shihei (toolbag)
			5868,   1,   -- Shikanofuda (toolbag)
			5319,   1,   -- Shinobi-tabi (toolbag)
			5309,   1,   -- Tsurara (toolbag)
            5308,   1,   -- Uchitake (toolbag)			
        };
        showShop(player, STATIC, stock_4);
		
    elseif (page == 5) then -- Pet Store.
        local stock_5 =
        {
            17016,    1,        -- Pet Food Alpha
			17017,    1,        -- Pet Food Beta
			17018,    1,        -- Pet Food Gamma
			17019,    1,        -- Pet Food Delta
			17020,    1,        -- Pet Food Epsilon
			17021,    1,        -- Pet Food Zeta
			17022,    1,        -- Pet Food Eta
			17023,    1,        -- Pet Food Theta
			19251,    1,        -- Pet Roborant
			16368,    100000,   -- Herder's Subligar
        };
        showShop(player, STATIC, stock_5);
		
    elseif (page == 6) then -- HQ Crystal.
        local stock_6 =
        {
            4238,   1,   -- HQ Fire Crystal (Inferno)
            4239,   1,   -- HQ Ice Crystal (Glacier)
            4240,   1,   -- HQ Wind Crystal (Cyclone)
            4241,   1,   -- HQ Earth Crystal (Terra)
            4242,   1,   -- HQ Lightning Crystal (Plasma)
            4243,   1,   -- HQ Water Crystal (Torrent)
            4244,   1,   -- HQ Light Crystal (Aurora)
            4245,   1,   -- HQ Dark Crystal (Twilight)
        };
        showShop(player, STATIC, stock_6);

    else
        player:PrintToPlayer( string.format( "Page %i not found.", page ) );
    end
end;