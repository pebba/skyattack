# remove all elytres from players in noflyzone
execute as @a[tag=noflyzone] run clear @s elytra

# loop function every 5 ticks
schedule function skyattack:loops/remove_elytra 5t
