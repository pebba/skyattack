# removes all attacker tags
execute as @a[tag=attacker] run tag @s remove attacker
tag @a add no_tnt

# removes bossbar
bossbar remove light_raid_bar
bossbar remove heavy_raid_bar

# special effects
playsound minecraft:item.goat_horn.sound.7 master @a ~ ~ ~ 100
tellraw @a "§7[§b§lSkyAttack§7] §r§aAttack repelled! All attackers have been teleported back."

# teleport players back to their islands
execute as @a[team=north] run tp @s 0 150 -350
execute as @a[team=south] run tp @s 0 150 350

# give them temporary slow falling
effect give @a slow_falling 10 0 true

# resets scores to stupid value --> stops loop
scoreboard players set light_timer_entity lightTimerScore -1
scoreboard players set heavy_timer_entity heavyTimerScore -1

# if carrier is still alive, teleport them back to their island but without beacon
execute as @a[tag=carrier] run tellraw @a "§7[§b§lSkyAttack§7] §r§dThe beacon was not captured. Was the carrier too bad?"
execute as @a[tag=carrier] at @s run tag @s remove carrier

tag @a remove messaged_stolen

# clear the beacons and put them in bedrock
setblock 0 70 350 minecraft:bedrock
setblock 0 70 -350 minecraft:bedrock

# enable all attack triggers again
scoreboard players enable @a[team=north] lightAttackTrigger
scoreboard players enable @a[team=north] heavyAttackTrigger
scoreboard players enable @a[team=south] lightAttackTrigger
scoreboard players enable @a[team=south] heavyAttackTrigger

# set attack ongoing score to 0
scoreboard players set #dummy attackOngoing 0
