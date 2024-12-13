# Remove the advancement from the player.
advancement revoke @s only lunareclipse.respawningpets:clicked_option/notifications

# Tell the game you interacted with the menu.
schedule function lunareclipse.respawningpets:config/technical/interacted_with_menu 3t

# Update the option.
execute if score config.notifications respawningpets.global_values matches 0 run return run scoreboard players set config.notifications respawningpets.global_values 1
execute if score config.notifications respawningpets.global_values matches 1 run return run scoreboard players set config.notifications respawningpets.global_values 0