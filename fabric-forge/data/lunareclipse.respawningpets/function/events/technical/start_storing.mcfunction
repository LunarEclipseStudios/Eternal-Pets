# Execute as every pet around every player and store it's information.
execute as @e[type=#lunareclipse.respawningpets:pets] at @s if data entity @s Owner run function lunareclipse.respawningpets:events/technical/store_pet_data with entity @s