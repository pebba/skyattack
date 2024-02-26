# increase timer for intruders, unless enemy is online
execute unless entity @a[team=south] run scoreboard players add @a[tag=north_intruder] intruderTimer 1
execute unless entity @a[team=north] run scoreboard players add @a[tag=south_intruder] intruderTimer 1

# if timer is at 15 min, add death marked tag
execute as @a[scores={intruderTimer=18000..},tag=!death_marked] run tag @s add death_marked

# reset intruder timer if player is not a north or south intruder
execute as @a[tag=!north_intruder,tag=!south_intruder] run scoreboard players set @s intruderTimer 0

# remove markers if player died recently
execute as @a[tag=death_marked, scores={timeSinceDeath=..20}] run tag @s remove death_marked
execute as @a[tag=shot, scores={timeSinceDeath=..20}] run tag @s remove shot

# execute as players with death marked tag
execute as @a[tag=death_marked] run function skyattack:territorial/joever

# tell player that countdown has started
execute unless entity @a[team=south] as @a[team=north,scores={intruderTimer=1}] run tellraw @s "§7[§b§lSkyAttack§7] §r§cYou have 15 minutes to leave enemy territory!"
execute unless entity @a[team=north] as @a[team=south,scores={intruderTimer=1}] run tellraw @s "§7[§b§lSkyAttack§7] §r§cYou have 15 minutes to leave enemy territory!"

# loop function every tick
schedule function skyattack:loops/check_intrudertime 1t
