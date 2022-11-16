data remove storage respawningpets:data FindOwnerUUID
data modify storage respawningpets:data FindOwnerUUID set from entity @s UUID

tag @s add petChecking

execute as @e[tag=dead,sort=random,limit=1] store success score @s petCheck run data modify storage respawningpets:data FindOwnerUUID set from entity @s Owner
data modify storage respawningpets:data FindOwnerUUID set from entity @s UUID

execute as @e[tag=dead] if score @s petCheck matches 0 run function respawningpets:events/respawn
execute as @e[tag=dead] if score @s petCheck matches 0 run tag @a remove petChecking
execute as @e[tag=respawned] if score @s petCheck matches 0 run tp @s ~ ~ ~

scoreboard players reset @e[tag=pet] petCheck
execute as @a[tag=petChecking] at @s run function eternal-pets:debug/retrieve_my_dead_pets