## heatvision
execute at @s if block ~ ~ ~ #batonblocks run particle dust 1.000 0.000 0.000 0.2 ~ ~ ~ 0 0 0 0 3 normal
execute as @s at @s if block ~ ~ ~ #batonblocks run tp ^ ^ ^0.1
scoreboard players add @s laserdistance 1
execute at @s run execute as @e[distance=..1] run data merge entity @s {Fire:400}
execute at @s unless block ~ ~ ~ #batonblocks run fill ^ ^ ^-1 ^ ^ ^-1 fire replace #batonblocks
kill @s[scores={laserdistance=360..}]
execute at @s run function superman:heatvision
