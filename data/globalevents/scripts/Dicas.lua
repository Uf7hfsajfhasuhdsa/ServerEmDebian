 local messages = {
"( Discord )Ei, no discord voc� encontrar� v�rias Dicas, Tutoriais e at� mesmo Shinobis para te acompanhar nessa jornada ! Acesse : https://discord.gg/MJYeqee",

"( Loot / Dinheiro ) J� aprendeu a utilizar nosso sistema !autoloot ? N�o perca tempo, a melhor forma de se fazer dinheiro � vendendo Item's Loot para NPC's Compradores.",

"( Up ) Em nosso servidor voc� pode upar seu personagem com in�meras formas diferentes : Hunts, Miss�es, Batalhas Di�rias.",

"( Discord ) Ei, no discord voc� encontrar� v�rias Dicas, Tutoriais e at� mesmo Shinobis para te acompanhar nessa jornada ! Acesse : https://discord.gg/MJYeqee",

"( Treinos ) Treine seu personagem, o Ninjutsu � respons�vel pelo dano de seus Jutsus.",

"( Equipes ) � muito importante que voc� esteja utilizando o Set equivalente ao seu Level. Busque sempre utilizar o Set do Seu level para evitar apuros em situa��es PVE e PVP.",

"( Discord ) Tire d�vidas, D� sugest�es, Aprenda mais sobre o jogo e Fa�a novos amigos ! Acesse : https://discord.gg/MJYeqee ",

"( Sobre ) Somos um servidor cl�ssico, valorizamos o tempo de jogo, cultivamos a dificuldade para oferecer a todos gratuitamente em forma de recompensa os melhores items, personagens exclusivos e vantagens que s�o encontradas em nossa Loja VIP.",

"( Promo��es ) Esta Gostando do Servidor ? Se Divertindo ? Ajude o nosso Servidor a se Manter Online e a Crescer! Promo�ao Double Points, Acima de 50,00 R$ (Cinquenta Reais) Receba o Dobro de Points!",

"( Aviso ) Atencao Ninjas! Evite ser Hackeado, Jamais passe sua senha para algu�m! O servidor n�o se Responsabiliza por Perdas ou Contas Hackeadas. Lembrem-se de Gerar as suas Recovery-Keys no nosso site!",

"( Ant-Drops ) Use o COMANDO !jam ou fale com Npc Konoha Jounnin ou Max ! Para n�o Droparem seus Items !",

"( Duvidas ) Ol� possui alguma Duvida sobre o Server ? Precisa de Ajuda em Algo ? Ent�o Conhe�a nosso Tutor Automatico usando os Seguinte Comandos - !Tutor (Numero da Informa��o) .. Pronto , sua duvida ser� Respondida em Segundos ! Mais Informa��es no Site : ntofun.com.br ..",

"( Stamina ) Venha conhecer nossas Fontes Termais! Relaxe Recuperando Stamina ! Por apenas 30 Dolares !",

"( Facebook ) Siga-nos no FACEBOOK - https://www.facebook.com/ntofun/ ...",


} 


local i = 0

function onThink(interval, lastExecution)

local message = messages[(i % #messages) + 1]

for _, pid in ipairs(getPlayersOnline()) do

doPlayerSendTextMessage(pid, 20, "[Dicas Fun] : ".. message ..". ") -- Exp , Dinheiro , Quest

i = i + 1

end

return TRUE

end