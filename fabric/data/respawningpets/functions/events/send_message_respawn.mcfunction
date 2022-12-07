data remove storage respawningpets:data3 FindOwnerUUID
data modify storage respawningpets:data3 FindOwnerUUID set from entity @s Owner

execute as @a[sort=nearest,limit=1] store success score @s ownerCheck run data modify storage respawningpets:data3 FindOwnerUUID set from entity @s UUID
execute as @a if score @s ownerCheck matches 0 run tellraw @s ["",{"text":"Yay! It's been 5 minutes!","color":"gold"},{"text":" Your pet has successfully respawned!"}]
execute as @a at @s if score @s ownerCheck matches 0 run playsound block.note_block.pling master @s ~ ~ ~ 1.0 2.0

execute if entity @a[scores={ownerCheck=0}] run tag @s add messageCheck2
scoreboard players reset @e ownerCheck