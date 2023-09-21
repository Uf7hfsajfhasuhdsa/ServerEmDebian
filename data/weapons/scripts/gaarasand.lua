local combat = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)

setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)

setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

setCombatParam(combat, COMBAT_PARAM_EFFECT, 194)

setCombatFormula(combat, COMBAT_FORMULA_SKILL, 80, 0, 80, 0)


function onUseWeapon(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x
    tPos.y = tPos.y
    doSendMagicEffect(tPos, 194)
end
return doCombat(cid, combat, var)

end