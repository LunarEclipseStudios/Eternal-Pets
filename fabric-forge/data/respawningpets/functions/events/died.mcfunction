#resetTimer
function respawningpets:events/timer/reset_timers

tag @s add dead
tag @s remove respawned
tag @s remove messageCheck2
data merge entity @s {NoAI:1b}

#deathMessage
execute if score respawnTime etp.configOptions matches 1 if score eventMessages etp.configOptions matches 1 on owner run tellraw @s ["",{"text":"Oh no, Your pet died!","color":"red"},{"text":" Don't worry though, they'll be back in "},{"score":{"name":"respawnTime","objective":"etp.configOptions"}},{"text":" minute!"}]
execute if score respawnTime etp.configOptions matches 2.. if score eventMessages etp.configOptions matches 1 on owner run tellraw @s ["",{"text":"Oh no, Your pet died!","color":"red"},{"text":" Don't worry though, they'll be back in "},{"score":{"name":"respawnTime","objective":"etp.configOptions"}},{"text":" minutes!"}]
execute if score eventMessages etp.configOptions matches 1 on owner run playsound block.note_block.pling master @s ~ ~ ~ 1.0 2.0