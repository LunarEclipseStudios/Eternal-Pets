#petIdentifier
execute as @e[type=wolf,tag=!pet] at @s if data entity @s Owner run tag @s add pet
execute as @e[type=cat,tag=!pet] at @s if data entity @s Owner run tag @s add pet
execute as @e[type=parrot,tag=!pet] at @s if data entity @s Owner run tag @s add pet

#tick
execute as @e[tag=pet] at @s run function respawningpets:ticks/pet

#deathMessage
execute as @e[tag=dead,limit=1,sort=random,tag=!messageCheck] run function respawningpets:events/send_message
