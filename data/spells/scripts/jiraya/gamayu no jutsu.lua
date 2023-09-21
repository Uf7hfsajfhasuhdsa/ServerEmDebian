local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -27, -28, -29, -30)
function onCastSpell(cid, var)
local storage = 6
local time = 1
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local parameters = { cid = cid, var = var}
local tPos = var.pos or getThingPos(var.number)
if tPos then tPos.x = tPos.x + 1 doSendMagicEffect(tPos, 232) end
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end