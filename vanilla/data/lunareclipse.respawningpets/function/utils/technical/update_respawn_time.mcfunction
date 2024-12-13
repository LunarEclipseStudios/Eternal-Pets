# Do the math for the timer.
scoreboard players set respawnTimeProcessed respawningpets.global_values 1
scoreboard players operation respawnTimeProcessed respawningpets.global_values *= minuteBase respawningpets.global_values
scoreboard players operation respawnTimeProcessed respawningpets.global_values *= config.respawnTime respawningpets.global_values
# Store the value.
execute store result storage lunareclipse.respawningpets:global_values respawn_time.time int 1 run scoreboard players get respawnTimeProcessed respawningpets.global_values
# Cancel the previous schedule.
schedule clear lunareclipse.respawningpets:main/scheduled/respawn_clock
# Update the timer.
function lunareclipse.respawningpets:utils/technical/update_timer with storage lunareclipse.respawningpets:global_values respawn_time