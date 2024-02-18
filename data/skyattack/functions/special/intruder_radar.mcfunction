# set cooldown to 10 min (12000 ticks)
scoreboard players set @s radarCooldown 12000

# count the number of intruders
scoreboard players set IntruderCount intruderCount 0
execute as @a[tag=intruder] run scoreboard players add IntruderCount intruderCount 1

# tell the player how many intruders there are
execute as @s run tellraw @s ["",{"text":"[","color":"gray"},{"text":"SkyAttack","bold":true,"color":"aqua"},{"text":"]","color":"gray"},{"text":" There are ","color":"yellow"},{"score":{"name":"IntruderCount","objective":"intruderCount"},"color":"yellow"},{"text":" intruders on the map.","color":"yellow"}]

# clear the item in hand
execute as @s run item replace entity @s weapon.mainhand with minecraft:air

# play sound item breaking to the player
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1

# reset scoreboard
scoreboard players set @s specialUsed 0
