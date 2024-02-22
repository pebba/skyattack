# enable all attack triggers again if no attack is currently active
scoreboard players enable @a[team=north] lightAttackTrigger
scoreboard players enable @a[team=south] lightAttackTrigger

# check if someone triggered light attack and if their cooldown is 0 and there is at least one enemy online
execute if score NorthCount playerCount matches 1.. if entity @a[team=south,scores={lightAttackTrigger=1..,lightAttackCooldown=0}] run function skyattack:raid/light_attack
execute if score SouthCount playerCount matches 1.. if entity @a[team=north,scores={lightAttackTrigger=1..,lightAttackCooldown=0}] run function skyattack:raid/light_attack

# inform the player if the cooldown is still active
execute as @a[team=north,scores={lightAttackTrigger=1..,lightAttackCooldown=1..}] run tellraw @s "§cYour team still needs to recover from the light attack."
execute as @a[team=south,scores={lightAttackTrigger=1..,lightAttackCooldown=1..}] run tellraw @s "§cYour team still needs to recover from the light attack."

# remove all attacker tags if no attack is currently ongoing
execute unless score #dummy attackOngoing matches 1.. run tag @a remove attacker

# reset the trigger
scoreboard players set @a[scores={lightAttackTrigger=1..}] lightAttackTrigger 0
