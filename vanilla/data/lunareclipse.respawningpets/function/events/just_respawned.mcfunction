# Spread the pet from the player.
spreadplayers ~ ~ 2 3 true @s

# Add the justRespawned tag for the particles.
tag @s add respawningpets.justRespawned

# Send a message.
execute if score config.respawnTime respawningpets.global_values matches 2.. run function lunareclipse.respawningpets:utils/send_notification {text:'["",{"text":"Yay! It\'s been ","color":"gold"},{"score":{"name":"config.respawnTime","objective":"respawningpets.global_values"},"color":"gold"},{"text":" minutes!","color":"gold"},{"text": " Your pet has successfully respawned!"}]',sound_pitch:2}
execute if score config.respawnTime respawningpets.global_values matches ..1 run function lunareclipse.respawningpets:utils/send_notification {text:'["",{"text":"Yay! It\'s been ","color":"gold"},{"score":{"name":"config.respawnTime","objective":"respawningpets.global_values"},"color":"gold"},{"text":" minute!","color":"gold"},{"text": " Your pet has successfully respawned!"}]',sound_pitch:2}

# Schedule the particles.
schedule function lunareclipse.respawningpets:events/technical/particles 2t