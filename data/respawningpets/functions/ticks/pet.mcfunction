#checkIfDead
execute if entity @s[tag=checked] unless predicate respawningpets:in_soul_sand_valley unless data entity @s {HandItems: [{id: "minecraft:totem_of_undying", Count: 1b}]} run function respawningpets:events/died

#totemGive
execute unless data entity @s {HandItems: [{id: "minecraft:totem_of_undying", Count: 1b}]} unless predicate respawningpets:in_soul_sand_valley run item replace entity @s weapon with totem_of_undying 1

#totemRemove
execute if predicate respawningpets:in_soul_sand_valley run item replace entity @s weapon with air 1

#checkIfNewPet
tag @s add checked

#deadTick
execute as @s[tag=dead] at @s run function respawningpets:ticks/dead

#backToPlayerCheck
execute as @s[tag=respawned] if entity @a[distance=..6] run function respawningpets:events/has_owner

#noOwner
execute as @s[tag=respawned] run scoreboard players add @s noOwnerCheck 1
execute if score @s noOwnerCheck matches 140.. run function respawningpets:events/no_owner