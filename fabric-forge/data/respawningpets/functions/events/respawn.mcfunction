#resetTimer
function respawningpets:events/timer/reset_timers

tag @s remove dead
tag @s add respawned
data merge entity @s {NoAI:0b,Sitting:0b}

# reviveMessage
execute if score respawnTime etp.configOptions matches 1 if score eventMessages etp.configOptions matches 1 on owner run tellraw @s ["",{"text":"Yay! It's been ","color":"gold"},{"score":{"name":"respawnTime","objective":"etp.configOptions"},"color":"gold"},{"text":" minute!","color":"gold"},{"text":" Your pet has successfully respawned!"}]
execute if score respawnTime etp.configOptions matches 2.. if score eventMessages etp.configOptions matches 1 on owner run tellraw @s ["",{"text":"Yay! It's been ","color":"gold"},{"score":{"name":"respawnTime","objective":"etp.configOptions"},"color":"gold"},{"text":" minutes!","color":"gold"},{"text":" Your pet has successfully respawned!"}]
execute if score eventMessages etp.configOptions matches 1 on owner run playsound block.note_block.pling master @s ~ ~ ~ 1.0 2.0
