# summon the hornet with armor stand and tag it with hornet_n (facing north) or hornet_s (facing south)

# hornet north
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~ ~ ~ minecraft:piston
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~ ~ ~-2 minecraft:honey_block
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~ ~ ~-4 minecraft:piston
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~ ~ ~-5 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~-1 ~ ~-5 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~-1 ~ ~-4 minecraft:sticky_piston[facing=south]
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~-1 ~ ~-2 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~-1 ~ ~-1 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~-1 ~ ~ minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~-1 ~1 ~ minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~ ~1 ~ minecraft:piston[facing=up]
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~ ~1 ~-2 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~ ~1 ~-3 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~ ~1 ~-4 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~ ~1 ~-5 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=hornet_n] at @s run setblock ~-1 ~1 ~-4 minecraft:slime_block

# hornet south
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~ ~ ~ minecraft:piston[facing=south]
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~ ~ ~2 minecraft:honey_block
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~ ~ ~4 minecraft:piston[facing=south]
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~ ~ ~5 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~1 ~ ~5 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~1 ~ ~4 minecraft:sticky_piston
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~1 ~ ~2 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~1 ~ ~1 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~1 ~ ~ minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~1 ~1 ~ minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~ ~1 ~ minecraft:piston[facing=up]
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~ ~1 ~2 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~ ~1 ~3 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~ ~1 ~4 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~ ~1 ~5 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=hornet_s] at @s run setblock ~1 ~1 ~4 minecraft:slime_block
