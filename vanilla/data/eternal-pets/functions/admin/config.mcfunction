
execute run tellraw @s [{"text":"Eternal Pets Config","underlined": true,"color": "#03b4b9"},{"text":"\n"}]
playsound block.note_block.pling master @s ~ ~ ~ 1 2

#eventMessages
execute if score eventMessages etp.configOptions matches 1 run tellraw @s ["",{"text":"Event Messages","color":"white","hoverEvent":{"action":"show_text","contents":{"text":"Changes whether or not a message is displayed when a players pet respawns/dies."}}},{"text":" - ","color": "dark_gray"},{"text":"[TRUE]","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/function respawningpets:config/event_messages/true"}},{"text":" | ","color": "dark_gray","underlined": false},{"text":"[FALSE]","color": "red","underlined": false,"clickEvent": {"action":"run_command","value":"/function respawningpets:config/event_messages/false"}}]
execute if score eventMessages etp.configOptions matches 0 run tellraw @s ["",{"text":"Event Messages","color":"white","hoverEvent":{"action":"show_text","contents":{"text":"Changes whether or not a message is displayed when a players pet respawns/dies."}}},{"text":" - ","color": "dark_gray"},{"text":"[TRUE]","color": "red","underlined": false,"clickEvent": {"action":"run_command","value":"/function respawningpets:config/event_messages/true"}},{"text":" | ","color": "dark_gray","underlined": false},{"text":"[FALSE]","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/function respawningpets:config/event_messages/false"}}]
tellraw @s ""

#respawnTime
execute if score respawnTime etp.configOptions matches 0.. run tellraw @s ["",{"text":"Respawn Time","color":"white","hoverEvent":{"action":"show_text","contents":{"text":"Changes the amount of time it takes for a pet to respawn. (Timed in minutes.)"}}},{"text":" - ","color": "dark_gray"},{"text":"[-]","color": "green","underlined": false,"clickEvent": {"action":"run_command","value":"/function respawningpets:config/respawn_time/decrease_time"}},{"text":" [","color": "dark_gray","underlined": false},{"score":{"name":"respawnTime","objective":"etp.configOptions"}},{"text":"] ","color": "dark_gray","underlined": false},{"text":"[+]","color": "green","underlined": false,"clickEvent": {"action":"run_command","value":"/function respawningpets:config/respawn_time/increase_time"}}]
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n"
