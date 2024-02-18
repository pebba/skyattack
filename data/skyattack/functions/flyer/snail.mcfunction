# summon the snail with armor stand and tag it with snail_n (facing north) or snail_s (facing south)

# snail north
execute as @e[type=minecraft:armor_stand,tag=snail_n] at @s run setblock ~ ~ ~ minecraft:piston
execute as @e[type=minecraft:armor_stand,tag=snail_n] at @s run setblock ~ ~ ~-1 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=snail_n] at @s run setblock ~ ~ ~-2 minecraft:sticky_piston[facing=south]
execute as @e[type=minecraft:armor_stand,tag=snail_n] at @s run setblock ~ ~ ~-3 minecraft:piston
execute as @e[type=minecraft:armor_stand,tag=snail_n] at @s run setblock ~ ~ ~-4 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=snail_n] at @s run setblock ~ ~1 ~-1 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=snail_n] at @s run setblock ~ ~1 ~-4 minecraft:redstone_block

# snail south
execute as @e[type=minecraft:armor_stand,tag=snail_s] at @s run setblock ~ ~ ~ minecraft:piston[facing=south]
execute as @e[type=minecraft:armor_stand,tag=snail_s] at @s run setblock ~ ~ ~1 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=snail_s] at @s run setblock ~ ~ ~2 minecraft:sticky_piston
execute as @e[type=minecraft:armor_stand,tag=snail_s] at @s run setblock ~ ~ ~3 minecraft:piston[facing=south]
execute as @e[type=minecraft:armor_stand,tag=snail_s] at @s run setblock ~ ~ ~4 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=snail_s] at @s run setblock ~ ~1 ~1 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=snail_s] at @s run setblock ~ ~1 ~4 minecraft:redstone_block
