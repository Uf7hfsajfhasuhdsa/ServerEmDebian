--POX PARALYZE BY MIMOW--

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHISICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 115)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -20.0, -0, -20.0, -0)


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 173)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -240.0, 0, -240.8, 0)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 134)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -0.0, 0, -0.0, 0)

local combat4 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 172)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -240.0, 0, -240.8, 0)

local combat5 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 134)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -0.0, 0, -0.0, 0)



local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
--setConditionParam(condition, CONDITION_PARAM_SPEED, -700)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat, condition)



arr1 = { 
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
 {0, 0, 1, 0, 1, 0, 1, 0, 0},
 {0, 0, 0, 1, 0, 1, 0, 0, 0},
 {0, 0, 1, 0, 3, 0, 1, 0, 0},
 {0, 0, 0, 1, 0, 1, 0, 0, 0},
 {0, 0, 1, 0, 1, 0, 1, 0, 0},
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr2 = {
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
 {0, 0, 1, 0, 1, 0, 1, 0, 0},
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
 {0, 0, 1, 0, 3, 0, 1, 0, 0},
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
 {0, 0, 1, 0, 1, 0, 1, 0, 0},
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
}


arr3 = { 
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
 {0, 0, 1, 0, 1, 0, 1, 0, 0},
 {0, 0, 0, 1, 0, 1, 0, 0, 0},
 {0, 0, 1, 0, 3, 0, 1, 0, 0},
 {0, 0, 0, 1, 0, 1, 0, 0, 0},
 {0, 0, 1, 0, 1, 0, 1, 0, 0},
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr4 = { 
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
 {0, 0, 0, 1, 0, 1, 0, 0, 0},
 {0, 0, 0, 0, 1, 0, 0, 0, 0},
 {0, 0, 0, 1, 3, 1, 0, 0, 0},
 {0, 0, 0, 0, 1, 0, 0, 0, 0},
 {0, 0, 0, 1, 0, 1, 0, 0, 0},
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr5 = { 
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
 {0, 0, 0, 1, 0, 1, 0, 0, 0},
 {0, 0, 1, 0, 1, 0, 1, 0, 0},
 {0, 0, 0, 1, 3, 1, 0, 0, 0},
 {0, 0, 1, 0, 1, 0, 1, 0, 0},
 {0, 0, 0, 1, 0, 1, 0, 0, 0},
 {0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area5)
setCombatArea(combat5, area4)

local function onCastSpell1(parameters)
    return isPlayer(parameters.cid) and doCombat(parameters.cid, combat1, parameters.var)
end
 
local function onCastSpell2(parameters)
    return isPlayer(parameters.cid) and doCombat(parameters.cid, combat2, parameters.var)
end

local function onCastSpell3(parameters)
    return isPlayer(parameters.cid) and doCombat(parameters.cid, combat3, parameters.var)
end

local function onCastSpell4(parameters)
    return isPlayer(parameters.cid) and doCombat(parameters.cid, combat5, parameters.var)
end

local function onCastSpell5(parameters)
    return isPlayer(parameters.cid) and doCombat(parameters.cid, combat5, parameters.var)
end

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 200, parameters)
addEvent(onCastSpell3, 300, parameters)
addEvent(onCastSpell4, 400, parameters)
addEvent(onCastSpell5, 500, parameters)
return TRUE
end  