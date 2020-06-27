## potion
effect give @s resistance 1 10 true
effect give @s haste 1 50 true
effect give @s strength 1 3 true
effect give @s[scores={Sprint=1..}] speed 1 8 true

## scoreboard stuff
execute as @s[tag=flydown,x_rotation=90] at @s unless block ~ ~-5 ~ #batonblocks run tag @s add touchdown
execute as @s[tag=touchdown] at @s run particle explosion ~ ~-5 ~ 1 0 1 0 10
execute as @s[tag=touchdown] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ExplosionRadius:2b,Fuse:1s,ignited:60b}
execute as @s[tag=flyup,x_rotation=-90] at @s unless block ~ ~2 ~ #batonblocks run tag @s add touchup
execute at @s[tag=touchup] run summon creeper ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ExplosionRadius:2b,Fuse:1s,ignited:60b}
function superman:removeflighttags
scoreboard players set @s Fatigue 0

## jump boost & levitation
execute as @s run effect clear @s jump_boost
execute as @s run effect clear @s levitation
execute as @s[x_rotation=70..90] at @s if block ~ ~-3 ~ #batonblocks run tag @s add flydown
execute as @s[x_rotation=-90..-50] at @s if block ~ ~-3 ~ #batonblocks run tag @s add flyup
execute as @s[x_rotation=-50..-40] at @s if block ~ ~-1 ~ #batonblocks run tag @s add flyslowup
execute as @s[x_rotation=-40..50] at @s if block ~ ~-3 ~ #batonblocks if block ~ ~-1 ~ #batonblocks run tag @s add flymiddle
execute as @s[x_rotation=-90..-50,scores={supercrouch=1..}] at @s unless block ~ ~-1 ~ #batonblocks run tag @s add takeoff
execute as @s[x_rotation=-90..-50,scores={Sprint=1..}] at @s unless block ~ ~-1 ~ #batonblocks run tag @s add takeoff
effect give @s[tag=flymiddle] levitation 1 255 true

## heatvision
execute at @s[nbt={SelectedItemSlot:8}] anchored eyes run summon armor_stand ^-0.2 ^ ^0.3 {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Small:1b,Tags:["laser1","laser"]}
execute at @s[nbt={SelectedItemSlot:8}] anchored eyes run summon armor_stand ^0.2 ^ ^0.3 {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Small:1b,Tags:["laser2","laser"]}
execute as @s at @s run tp @e[tag=laser] @s
execute as @e[tag=laser] at @s run tp @s ~ ~1.6 ~
execute as @e[tag=laser2] at @s run tp @s ^0.2 ^ ^
execute as @e[tag=laser1] at @s run tp @s ^-0.2 ^ ^
execute as @e[tag=laser] at @s run function superman:heatvision
kill @e[tag=laser]
