# if a pearl is tagged as mounted but no player is riding it, remove the pearl
execute as @e[type=ender_pearl,tag=mounted] at @s unless entity @p[distance=..5] run kill @s

# loop function every 10 ticks
schedule function skyattack:loops/remove_unmounted_pearls 10t
