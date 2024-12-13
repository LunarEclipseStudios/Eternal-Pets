# Show a flash particle.
execute at @e[type=#lunareclipse.respawningpets:config,tag=respawningpets.config,distance=..7] run particle flash ~ ~ ~ 0 0 0 1 10
# Remove the config.
kill @e[type=#lunareclipse.respawningpets:config,tag=respawningpets.config,distance=..7]