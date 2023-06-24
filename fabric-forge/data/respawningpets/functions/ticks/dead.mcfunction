#setup
effect give @s resistance 5 255 true
effect give @s invisibility 1 1 true
effect give @s slow_falling 5 1 true

#limbo
execute in overworld run tp @s 0 500 0

#timer
scoreboard players add @s etp.respawnTimerTicks 1
execute if score @s etp.respawnTimerTicks matches 1200.. run function respawningpets:events/timer/add_minute
execute if score @s etp.respawnTimerMinutes = respawnTime etp.configOptions run function respawningpets:events/respawn