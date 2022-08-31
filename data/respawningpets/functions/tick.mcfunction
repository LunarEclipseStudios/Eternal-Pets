##20tick
scoreboard players add tick respets20tick 1
execute if score tick respets20tick matches 20.. run function respawningpets:20tick

##long_distance_tp_fix
execute as @e[tag=tamed] at @s unless entity @a[distance=..32] run forceload add ~-10 ~ ~10 ~

##pets
execute as @e[type=wolf,tag=!tamed] at @s if data entity @s Owner run function respawningpets:tamed
execute as @e[type=cat,tag=!tamed] at @s if data entity @s Owner run function respawningpets:tamed
execute as @e[type=parrot,tag=!tamed] at @s if data entity @s Owner run function respawningpets:tamed
execute as @e[tag=tamed] at @s if predicate respawningpets:in_soul_sand_valley run tag @s add in_soul_sand_valley
execute as @e[tag=tamed,tag=in_soul_sand_valley] at @s unless predicate respawningpets:in_soul_sand_valley run function respawningpets:no_soulkill
execute as @e[tag=tamed] at @s unless data entity @s {HandItems: [{id: "minecraft:totem_of_undying", Count: 1b}]} run stopsound @a * minecraft:item.totem.use
execute as @e[tag=tamed] at @s unless data entity @s {HandItems: [{id: "minecraft:totem_of_undying", Count: 1b}]} unless predicate respawningpets:in_soul_sand_valley run function respawningpets:died
#health_score
execute as @e[tag=tamed] at @s store result score @s health run data get entity @s Health

##dead_attributes
execute as @e[tag=tamed,tag=dead] at @s run effect give @s invisibility 1 1 true
execute as @e[tag=tamed,tag=dead] at @s run effect give @s regeneration 1 255 true
execute as @e[tag=tamed,tag=dead] at @s run effect give @s resistance 1 255 true
execute as @e[tag=tamed,tag=dead] at @s run effect give @s fire_resistance 1 255 true
execute as @e[tag=tamed,tag=dead] at @s run team join petDead
execute as @e[tag=tamed,tag=!dead] at @s run team leave petDead

execute as @e[tag=tamed,tag=dead] at @r run tp ~ 400 ~

