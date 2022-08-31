tag @s remove dead
tag @s add justRespawned
data merge entity @s {NoAI:0b}
execute at @r run tp @s ^ ^ ^-1
scoreboard players reset @s petRespawnTimer
tp ~ ~1 ~
forceload remove all
