local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 13)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_LIGHT)
setConditionParam(condition, CONDITION_PARAM_LIGHT_LEVEL, 30)
setConditionParam(condition, CONDITION_PARAM_LIGHT_COLOR, 215)
setConditionParam(condition, CONDITION_PARAM_TICKS, (6 * 60 + 10) * 10000)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
