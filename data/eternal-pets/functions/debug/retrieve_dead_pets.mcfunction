#execute as @e[tag=dead,tag=pet] run function respawningpets:events/respawn
#tp @e[tag=respawned] ~ ~ ~

#

data remove storage respawningpets:data FindOwnerUUID
data modify storage respawningpets:data FindOwnerUUID set from entity @s UUID

execute as @e[tag=dead] store success score @s petCheck run data modify storage respawningpets:data FindOwnerUUID set from entity @s UUID
execute as @e[tag=dead] if score @s petCheck matches 0 run function respawningpets:events/respawn
execute as @e[tag=dead] if score @s petCheck matches 0 run tp @s ~ ~ ~ 