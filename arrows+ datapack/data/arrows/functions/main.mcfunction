kill @e[type=minecraft:marker]
execute as @a at @s anchored eyes run summon marker ^ ^ ^ {Tags:["tracing"]}
execute as @a at @s store result entity @e[sort=nearest,type=minecraft:marker,tag=tracing,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @a at @s store result entity @e[sort=nearest,type=minecraft:marker,tag=tracing,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
execute as @e[type=minecraft:marker,tag=tracing] at @s run function arrows:raycast
execute as @e[type=minecraft:marker,tag=found] at @s run function arrows:replace
kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}}]
clear @a barrier
execute as @e[type=armor_stand,tag=fletcher] at @s run function arrows:set_inv
execute as @e[type=glow_item_frame,tag=fletcher] at @s run function arrows:kill
execute as @e[type=arrow] run function arrows:custom_effects