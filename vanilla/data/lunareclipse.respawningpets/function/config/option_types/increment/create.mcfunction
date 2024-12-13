# List of variables used:
# "id" - The ID of the option.
# "display_name" - The display name of the option.
# "value_phrase" - The phrase that goes after the number count.
# "pos_x"
# "button1"
# "button2"

# Create the hitbox for the interaction.
$summon interaction ^$(button1) ^0 ^3.25 {width:0.5f,height:0.5f,Tags:["respawningpets.config","config.$(id)","config.decrease"],response:1b}
$summon text_display ^$(button1) ^0 ^3.25 {Tags:["respawningpets.config","config.$(id)"],shadow:1b,background:16711680,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'[{"color":"white","text":"-"}]',brightness:{sky:15,block:15}}
$summon interaction ^$(button2) ^0 ^2.75 {width:0.5f,height:0.5f,Tags:["respawningpets.config","config.$(id)","config.increment"],response:1b}
$summon text_display ^$(button2) ^0 ^2.75 {Tags:["respawningpets.config","config.$(id)"],shadow:1b,background:16711680,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'[{"color":"white","text":"+"}]',brightness:{sky:15,block:15}}
# Create the display.
$summon text_display ^$(pos_x) ^0.5 ^3 {Tags:["respawningpets.config","config.$(id)","config.display"],shadow:1b,background:16711680,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25f,1.25f,1.25f]},text:'["",{"score":{"name":"config.$(id)","objective":"respawningpets.global_values"}},{"color":"white","text":"$(value_phrase)"}]',brightness:{sky:15,block:15}}
$function lunareclipse.respawningpets:config/option_types/increment/update {option:"$(id)"}
# Create the text.
$summon text_display ^$(pos_x) ^1 ^3 {Tags:["respawningpets.config", "config.text"],shadow:1b,background:16711680,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"color":"white","text":"$(display_name)"}',brightness:{sky:15,block:15}}