# set cooldown to 1 min (1200 ticks)
scoreboard players set @s boosterCooldown 1200

# launch player up
execute as @s run effect give @s minecraft:levitation 1 127 true

# clear the item in hand
execute as @s run item replace entity @s weapon.mainhand with minecraft:air

# play sound item breaking to the player
playsound minecraft:entity.player.burp master @s ~ ~ ~ 1 1

# reset scoreboard
scoreboard players set @s specialUsed 0
