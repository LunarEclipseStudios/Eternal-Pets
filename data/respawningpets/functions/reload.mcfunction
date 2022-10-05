##scoreboards
scoreboard objectives add respets20tick dummy
scoreboard objectives add pethealth dummy
scoreboard objectives add petRespawnTimer dummy
scoreboard objectives add respawnEffectDelay dummy


##teams
team add petDead
team modify petDead collisionRule never

#safetyNet
schedule function respawningpets:safetynet 10s