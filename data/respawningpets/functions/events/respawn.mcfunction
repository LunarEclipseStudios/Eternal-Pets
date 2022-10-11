tag @s remove dead
tag @s add respawned
scoreboard players reset @s respawnTimer
data merge entity @s {NoAI:0b,Sitting:0b}