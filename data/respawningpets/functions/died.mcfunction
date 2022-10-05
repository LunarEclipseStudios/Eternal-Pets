stopsound @a * minecraft:item.totem.use
playsound minecraft:entity.allay.ambient_without_item master @a ~ ~ ~ 1 .5
particle minecraft:soul ~ ~.5 ~ 0.5 0.5 0.5 .01 10
item replace entity @s weapon with totem_of_undying
tag @s add dead
data merge entity @s {NoAI:1b}
effect clear @s absorption
effect clear @s fire_resistance
effect clear @s regeneration