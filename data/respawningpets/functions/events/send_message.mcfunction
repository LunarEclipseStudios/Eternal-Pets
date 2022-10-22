data remove storage respawningpets:data FindOwnerUUID
data modify storage respawningpets:data FindOwnerUUID set from entity @s Owner

execute as @r store success score @s petCheck run data modify storage respawningpets:data FindOwnerUUID set from entity @s UUID
execute as @r at @s if score @s petCheck matches 0 run function respawningpets:events/death_inform