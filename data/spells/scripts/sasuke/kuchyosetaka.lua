function onCastSpell(cid, var)


local playerpos = getPlayerPosition(cid)

local MaximoSummon = 1 --- Maximo de Monstros Sumonados!! No Caso So Posso Sumonar 5 Clones


local summons = getCreatureSummons(cid)

if(table.maxn(summons) < MaximoSummon) then -- no summons

local clone = doCreateMonster("kuchyose taka", playerpos)

doConvinceCreature(cid, clone)

doSendMagicEffect(playerpos, 365)

return TRUE

end

end