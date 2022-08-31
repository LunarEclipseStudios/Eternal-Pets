##reset
scoreboard players reset tick respets20tick

##respawn_timer
execute as @e[tag=tamed,tag=dead] at @s run scoreboard players add @s petRespawnTimer 1
execute as @e[tag=tamed,tag=dead] at @s if score @s petRespawnTimer matches 6000.. run function respawningpets:respawn

##justRespawned
execute as @e[tag=tamed,tag=justRespawned] at @s run scoreboard players add @s respawnEffectDelay 1
execute as @e[tag=tamed,tag=justRespawned] at @s if score @s respawnEffectDelay matches 2.. run function respawningpets:respawneffects

##soulSandValleyKill
execute as @e[tag=tamed] at @s if predicate respawningpets:in_soul_sand_valley run item replace entity @s weapon with air
