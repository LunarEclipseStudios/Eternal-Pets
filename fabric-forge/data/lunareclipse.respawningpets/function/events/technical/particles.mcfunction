# Play a sound.
playsound minecraft:particle.soul_escape neutral @a ~ ~ ~

# Particles.
execute as @e[type=#lunareclipse.respawningpets:pets,tag=respawningpets.justRespawned] at @s run particle minecraft:soul ~ ~0.5 ~ 0.5 0.5 0.5 0.01 10
execute as @e[type=#lunareclipse.respawningpets:pets,tag=respawningpets.justRespawned] at @s run particle minecraft:flash ~ ~0.5 ~ 0 0 0 1 1

# Remove the tag.
execute as @e[type=#lunareclipse.respawningpets:pets,tag=respawningpets.justRespawned] at @s run tag @s remove respawningpets.justRespawned