# check for placed armor stands with specific tag
# has to be in tick.mcfunction because of the priority
execute as @e[type=minecraft:armor_stand,tag=snail_n] run function skyattack:flyer/snail
execute as @e[type=minecraft:armor_stand,tag=snail_s] run function skyattack:flyer/snail
execute as @e[type=minecraft:armor_stand,tag=crab_n] run function skyattack:flyer/crab
execute as @e[type=minecraft:armor_stand,tag=crab_s] run function skyattack:flyer/crab
execute as @e[type=minecraft:armor_stand,tag=hornet_n] run function skyattack:flyer/hornet
execute as @e[type=minecraft:armor_stand,tag=hornet_s] run function skyattack:flyer/hornet

# check for attacks
execute as @a[scores={lightAttackTrigger=1..}] run function skyattack:raid/check_light_attack
execute as @a[scores={heavyAttackTrigger=1..}] run function skyattack:raid/check_heavy_attack

# cooldown for attacks
scoreboard players remove @a[scores={lightAttackCooldown=1..}] lightAttackCooldown 1
scoreboard players remove @a[scores={heavyAttackCooldown=1..}] heavyAttackCooldown 1

# check for death and reset if player is dies
execute as @a run scoreboard players add @s timeSinceDeath 1
execute as @a[scores={death=1..}] run scoreboard players set @s timeSinceDeath 0
execute as @a[scores={death=1..}] run scoreboard players set @s death 0

# check for pearl thrown
execute as @a[scores={pearlThrown=1..}] at @s run function skyattack:special/ride_pearl

# set loyalty trident to come back in void
execute as @e[type=trident,x=-10000,dx=20000,y=-50,dy=-100,z=10000,dz=-20000] at @s run data modify entity @s DealtDamage set value 1b

# kill all beacon drop entities
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:beacon"}}]

# kill the advertisement player head
clear @a minecraft:player_head

# check for items and trigger advancements
execute as @a[nbt={Inventory:[{id:"minecraft:zombie_horse_spawn_egg"}]}] run advancement grant @s only skyattack:snail
execute as @a[nbt={Inventory:[{id:"minecraft:guardian_spawn_egg"}]}] run advancement grant @s only skyattack:crab
execute as @a[nbt={Inventory:[{id:"minecraft:ocelot_spawn_egg"}]}] run advancement grant @s only skyattack:hornet

execute as @a[nbt={Inventory:[{id:"minecraft:netherite_helmet"},{id:"minecraft:netherite_chestplate"},{id:"minecraft:netherite_leggings"},{id:"minecraft:netherite_boots"}]}] run advancement grant @s only skyattack:netherite_armor
