# Remove the advancement from the player.
advancement revoke @s only lunareclipse.respawningpets:clicked_option/respawn_time_decrease

# Tell the game you interacted with the menu.
schedule function lunareclipse.respawningpets:config/technical/interacted_with_menu 3t

# Stop the user from decreasing the number at 0.
execute if score config.respawnTime respawningpets.global_values matches ..1 run return fail

# Set the scoreboard.
scoreboard players remove config.respawnTime respawningpets.global_values 1
# Update the other values.
function lunareclipse.respawningpets:utils/technical/update_respawn_time