# Remove the advancement from the player.
advancement revoke @s only lunareclipse.respawningpets:clicked_option/respawn_time_increment

# Tell the game you interacted with the menu.
schedule function lunareclipse.respawningpets:config/technical/interacted_with_menu 3t

# Set the scoreboard.
scoreboard players add config.respawnTime respawningpets.global_values 1
# Update the other values.
function lunareclipse.respawningpets:utils/technical/update_respawn_time