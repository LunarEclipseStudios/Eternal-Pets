# List of variables used:
# "time" - The amount of time in minutes it takes for a pet to respawn.

# Set the scoreboard.
$scoreboard players set config.respawnTime respawningpets.global_values $(time)
# Update the other values.
function lunareclipse.respawningpets:utils/technical/update_respawn_time