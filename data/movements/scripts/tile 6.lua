function onStepIn(cid,item,pos)
local wallPos = {x=955,y=1339,z=9,stackpos=1}
local wallId = 1026

			function createItem()
			doCreateItem(wallId,1,wallPos)
			return TRUE
			end
        if item.uid == 4178 then
           if not getThingfromPos(wallPos).itemid == wallId then
              doCreateItem(wallPos, 1026, 1)
           end
        elseif item.uid == 4179 then
           if getThingfromPos(wallPos).itemid == wallId then
              doRemoveItem(getThingfromPos(wallPos).uid,1)
			  addEvent(createItem, 15000)
           end
           end
           return TRUE
           end