local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -27, -28, -29, -30)
function onCastSpell(cid, var)

local storage = 1
local time = 1
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local eff = 253 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+2, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
doSendMagicEffect(position, eff)

local eff = 253 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+2, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 300, position, eff)

return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end