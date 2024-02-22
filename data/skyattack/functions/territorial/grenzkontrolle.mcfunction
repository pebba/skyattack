# remove tnt + minecarts because grenzkontrolle
execute as @a[x=-10000,y=-60,z=-5,dx=20000,dy=360,dz=10] run clear @s minecraft:tnt
execute as @a[x=-10000,y=-60,z=-5,dx=20000,dy=360,dz=10] run clear @s minecraft:tnt_minecart
execute as @a[x=-10000,y=-60,z=-5,dx=20000,dy=360,dz=10] run clear @s minecraft:end_crystal
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:tnt"}},x=-10000,y=-60,z=-5,dx=20000,dy=360,dz=10] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:tnt_minecart"}},x=-10000,y=-60,z=-5,dx=20000,dy=360,dz=10] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:end_crystal"}},x=-10000,y=-60,z=-5,dx=20000,dy=360,dz=10] run kill @s
execute as @a[tag=no_tnt,x=-10000,y=-60,z=-5,dx=20000,dy=360,dz=10] run fill ~-30 ~-20 ~-30 ~30 ~20 ~30 air replace tnt
execute as @e[type=minecraft:chest_minecart, x=-10000, y=-60, z=-5, dx=20000, dy=360, dz=10] run data modify entity @s Items[{id:"minecraft:tnt"}] set value {}
execute as @e[type=minecraft:chest_minecart, x=-10000, y=-60, z=-5, dx=20000, dy=360, dz=10] run data modify entity @s Items[{id:"minecraft:tnt_minecart"}] set value {}
execute as @e[type=chest_boat,x=-10000,y=-60,z=-5,dx=20000,dy=360,dz=10] run data modify entity @s Items[{id:"minecraft:tnt"}] set value {}
execute as @e[type=chest_boat,x=-10000,y=-60,z=-5,dx=20000,dy=360,dz=10] run data modify entity @s Items[{id:"minecraft:tnt_minecart"}] set value {}
execute as @e[type=minecraft:tnt_minecart, x=-10000, y=-60, z=-5, dx=20000, dy=360, dz=10] at @s run summon tnt ~ ~ ~
execute as @e[type=minecraft:tnt_minecart, x=-10000, y=-60, z=-5, dx=20000, dy=360, dz=10] run kill @s

# remove the tnt craft bypass with extra steps
execute as @a[team=north,x=-10000,y=-60,z=0,dx=20000,dy=360,dz=10000] run clear @s minecraft:firework_star
execute as @a[team=south,x=-10000,y=-60,z=0,dx=20000,dy=360,dz=-10000] run clear @s minecraft:firework_star

execute as @a[team=north,x=-10000,y=-60,z=0,dx=20000,dy=360,dz=10000] run clear @s minecraft:ghast_tear
execute as @a[team=south,x=-10000,y=-60,z=0,dx=20000,dy=360,dz=-10000] run clear @s minecraft:ghast_tear

# set gamemode to survival for players in a team
execute as @a[team=north,x=-10000,dx=20000,y=-60,dy=360,z=-10000,dz=20000] run gamemode survival @s
execute as @a[team=south,x=-10000,dx=20000,y=-60,dy=360,z=-10000,dz=20000] run gamemode survival @s

# set gamemode to adventure for players within 15 blocks of z=0 in a team
execute as @a[team=north,x=-10000,dx=20000,y=-60,dy=360,z=-15,dz=30] run gamemode adventure @s
execute as @a[team=south,x=-10000,dx=20000,y=-60,dy=360,z=-15,dz=30] run gamemode adventure @s

# loop function every tick
schedule function skyattack:territorial/grenzkontrolle 1t
