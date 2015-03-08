<<<<<<< HEAD
-----------------------------------
-- Area: Pso'xja
-- NPC:  Gargoyle
-----------------------------------



-----------------------------------
-- onMobSpawn
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	
	for i = 0, 16, 1 do
	
	local GargoyleOffset = 16814082 + (i-1);
	local DoorOffset = 16814445 + (i-1);
	
		if(mob:getID() == GargoyleOffset) then
			GetNPCByID(DoorOffset):openDoor(30);
		end
	end
	
=======
-----------------------------------
-- Area: Pso'xja
-- NPC:  Gargoyle
-----------------------------------



-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

	for i = 0, 16, 1 do

	local GargoyleOffset = 16814082 + (i-1);
	local DoorOffset = 16814445 + (i);

		if(mob:getID() == GargoyleOffset) then
			GetNPCByID(DoorOffset):openDoor(30);
		end
	end

>>>>>>> c91db6bd4e5c3d13dcfd2882db651fd0129d25c9
end;