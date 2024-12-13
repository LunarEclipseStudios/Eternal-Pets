# Schedule the timed functions.
schedule function lunareclipse.respawningpets:main/scheduled/3_second 3s

# Define the needed scoreboard variables.
scoreboard objectives add respawningpets.global_values dummy

# Set the 60 for the timer score to multiply by.
scoreboard players set minuteBase respawningpets.global_values 60

# Set the default options for the config.
execute unless score config.respawnTime respawningpets.global_values matches 0.. run function lunareclipse.respawningpets:utils/set_respawn_time {time:3}
execute unless score config.notifications respawningpets.global_values matches 0.. run scoreboard players set config.notifications respawningpets.global_values 1