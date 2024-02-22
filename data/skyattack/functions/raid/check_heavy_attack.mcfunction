# enable all attack triggers again if no attack is currently active
scoreboard players enable @a[team=north] heavyAttackTrigger
scoreboard players enable @a[team=south] heavyAttackTrigger

# check if someone triggered heavy attack and if their cooldown is 0 and there are at least two enemies online
execute if score NorthCount playerCount matches 2.. if entity @a[team=south,scores={heavyAttackTrigger=1..,heavyAttackCooldown=0}] run function skyattack:raid/heavy_attack
execute if score SouthCount playerCount matches 2.. if entity @a[team=north,scores={heavyAttackTrigger=1..,heavyAttackCooldown=0}] run function skyattack:raid/heavy_attack

# inform the player if the cooldown is still active
execute as @a[team=north,scores={heavyAttackTrigger=1..,heavyAttackCooldown=1..}] run tellraw @s "§cYour team still needs to recover from the heavy attack."
execute as @a[team=south,scores={heavyAttackTrigger=1..,heavyAttackCooldown=1..}] run tellraw @s "§cYour team still needs to recover from the heavy attack."

# remove all attacker tags if no attack is currently ongoing
execute unless score #dummy attackOngoing matches 1.. run tag @a remove attacker

# reset the trigger
scoreboard players set @a[scores={heavyAttackTrigger=1..}] heavyAttackTrigger 0
