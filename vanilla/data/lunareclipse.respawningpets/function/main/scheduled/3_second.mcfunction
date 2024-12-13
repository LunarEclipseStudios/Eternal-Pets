# Reschedule the timed function.
schedule function lunareclipse.respawningpets:main/scheduled/3_second 3s

# Update the pet's data.
function lunareclipse.respawningpets:events/technical/start_storing

# Remove the config if the player leaves the area.
execute as @e[type=marker,tag=respawningpets.config] at @s unless entity @a[distance=..7] run function lunareclipse.respawningpets:config/technical/remove_config