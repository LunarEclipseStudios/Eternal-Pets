# Check for obstructions.
execute anchored eyes unless block ^ ^ ^4 air run function lunareclipse.respawningpets:utils/send_notification {text:'["",{"text":"Warning ","color":"red"},{"text": "To use the config move somewhere with more space."}]',sound_pitch:0.1}
execute anchored eyes unless block ^ ^ ^4 air run return fail
execute anchored eyes unless block ^ ^-1.5 ^4 air run function lunareclipse.respawningpets:utils/send_notification {text:'["",{"text":"Warning ","color":"red"},{"text": "To use the config look up a little more."}]',sound_pitch:0.1}
execute anchored eyes unless block ^ ^-1.5 ^4 air run return fail

# Remove any old config entities.
kill @e[type=#lunareclipse.respawningpets:config,tag=respawningpets.config,distance=..7]

# Summon a marker to save the position of the config.
summon marker ~ ~ ~ {Tags:["respawningpets.config"]}

# Summon the text for the config.
summon text_display ^ ^1.9 ^4 {Tags:["respawningpets.config", "config.text"],shadow:1b,background:16711680,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"color":"#00A2E8","text":"ETERNAL PETS"}',brightness:{sky:15,block:15}}
summon text_display ^ ^1.45 ^4 {Tags:["respawningpets.config", "config.text"],shadow:1b,background:16711680,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"color":"white","text":"ᴄᴏɴꜰɪɢ"}',brightness:{sky:15,block:15}}

# Create the space for the notifications option.
function lunareclipse.respawningpets:config/option_types/toggle/create {id:"notifications",display_name:"ɴᴏᴛɪꜰɪᴄᴀᴛɪᴏɴꜱ",pos_x:2}

# Create the space for the respawn time option.
function lunareclipse.respawningpets:config/option_types/increment/create {id:"respawnTime",display_name:"ʀᴇꜱᴘᴀᴡɴ ᴛɪᴍᴇ",value_phrase:" minutes",pos_x:-2,button1:-1.5,button2:-2.5}

# Make all the text face the player.
execute at @e[type=minecraft:text_display,distance=..7] run tp @e[type=minecraft:text_display,distance=..7,sort=nearest,limit=1] ~ ~ ~ facing entity @s eyes