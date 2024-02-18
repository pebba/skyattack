# reset the special score
scoreboard players set @s specialUsed 0

# run function every 5 ticks
schedule function skyattack:special/loops/reset_special 5t
