## passivepowers

## effects
execute as @e[tag=superman] run function superman:passiveeffects
execute as @e[tag=!superman] run function superman:removeflighttags
execute as @e[tag=superman] run attribute @s minecraft:generic.knockback_resistance base set 1000 

## flight

    ## collider for motion
tp @e[tag=collider] 0 0 0
kill @e[tag=collider]
execute as @e[tag=superman] run function superman:flight

## arrow bounce off
#tp @e[tag=arrowshield] 0 0 0
#kill @e[tag=arrowshield]
#summon wither_skeleton 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["arrowshield"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
#execute at @e[tag=superman] if entity @e[type=arrow,nbt={inGround:0b},distance=..3] run tp @e[tag=arrowshield] ~ ~ ~

    ##reset
execute as @e[tag=superman] run function superman:reset
execute as @e unless block ~ ~-1 ~ #batonblocks run function superman:removeflighttags
