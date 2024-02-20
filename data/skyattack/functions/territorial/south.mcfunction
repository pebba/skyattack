# if team south enters north territory
execute as @a[team=south,distance=..100,x=0,y=65,z=-350] run effect give @s minecraft:mining_fatigue 2 4 true
execute as @a[team=south,distance=..100,x=0,y=65,z=-350] run effect give @s minecraft:weakness 2 4 true
execute as @a[team=south,distance=..100,x=0,y=65,z=-350] run effect give @s minecraft:hunger 2 1 true
execute as @a[team=south,distance=..100,x=0,y=65,z=-350] run effect give @s minecraft:slowness 2 0 true
execute as @a[team=south,distance=..100,x=0,y=65,z=-350,tag=!intruder,tag=!attacker] run tellraw @s "§7[§b§lSkyAttack§7] §r§cYou are in enemy territory! A strange force weakens you!"
execute as @a[team=south,distance=..100,x=0,y=65,z=-350,tag=!intruder,tag=attacker] run tellraw @s "§7[§b§lSkyAttack§7] §r§cYou are in enemy territory!"
execute as @a[team=south,distance=..100,x=0,y=65,z=-350,tag=!intruder] run tag @s add intruder
execute as @a[team=south,distance=100..,x=0,y=65,z=-350,tag=intruder] run tellraw @s "§7[§b§lSkyAttack§7] §r§2You have left enemy territory!"
execute as @a[team=south,distance=100..,x=0,y=65,z=-350,tag=intruder] run tag @s remove intruder

# if team south leaves their territory
execute as @a[team=south,distance=100..,x=0,y=65,z=350,tag=!outside] run tellraw @s "§7[§b§lSkyAttack§7] §r§6Your territory ends here. Everything here is unprotected!"
execute as @a[team=south,distance=100..,x=0,y=65,z=350,tag=!outside] run tag @s add outside
execute as @a[team=south,distance=..100,x=0,y=65,z=350,tag=outside] run tellraw @s "§7[§b§lSkyAttack§7] §r§2You are back in your own territory!"
execute as @a[team=south,distance=..100,x=0,y=65,z=350,tag=outside] run tag @s remove outside

# send warning message after 175 blocks from center
execute as @a[team=south,distance=175..,x=0,y=65,z=350,tag=!messaged] if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run tellraw @s "§7[§b§lSkyAttack§7] §r§cTurn back! You will lose your elytra in 25m!"
execute as @a[team=south,distance=175..,x=0,y=65,z=350,tag=!messaged] run tag @s add messaged
execute as @a[team=south,distance=..175,x=0,y=65,z=350,tag=messaged] run tag @s remove messaged

# clear elytra after 200 blocks from center
execute as @a[team=south,distance=200..,x=0,y=65,z=350,tag=!noflyzone] run tag @s add noflyzone
execute as @a[team=south,distance=..200,x=0,y=65,z=350,tag=noflyzone] run tag @s remove noflyzone

# teleport intruders back to their territory only if they are between 200 and 250 blocks and no enemies are online
execute unless entity @a[team=north] as @a[team=south,tag=intruder,distance=200..250,x=0,y=65,z=-350] run tp @s 0 80 350
execute unless entity @a[team=north] as @a[team=south,tag=intruder,distance=200..250,x=0,y=65,z=-350] run effect give @s minecraft:slow_falling 5 0 true

# loop function every 2 ticks (1t doesn't work with removal of debuffs)
schedule function skyattack:territorial/south 2t
