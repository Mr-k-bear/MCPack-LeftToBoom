
# 清除队伍人数记录
scoreboard players set TeamCountA T 0
scoreboard players set TeamCountB T 0
scoreboard players set TeamCountC T 0
scoreboard players set TeamCountD T 0
scoreboard players set TeamCountE T 0

# 计算每个队伍有多少人
execute as @a[team=A] run scoreboard players operation TeamCountA T += ONE T
execute as @a[team=B] run scoreboard players operation TeamCountB T += ONE T
execute as @a[team=C] run scoreboard players operation TeamCountC T += ONE T
execute as @a[team=D] run scoreboard players operation TeamCountD T += ONE T
execute as @a[team=E] run scoreboard players operation TeamCountE T += ONE T

# 清除维度记录
scoreboard players set DimensionA T 0
scoreboard players set DimensionB T 0
scoreboard players set DimensionC T 0
scoreboard players set DimensionD T 0
scoreboard players set DimensionE T 0

# 计算每个队伍所在维度
execute as @a[team=A,nbt={Dimension: "minecraft:overworld"}] run scoreboard players set DimensionA T 1
execute as @a[team=A,nbt={Dimension: "minecraft:the_nether"}] run scoreboard players set DimensionA T 2
execute as @a[team=A,nbt={Dimension: "minecraft:the_end"}] run scoreboard players set DimensionA T 3

execute as @a[team=B,nbt={Dimension: "minecraft:overworld"}] run scoreboard players set DimensionB T 1
execute as @a[team=B,nbt={Dimension: "minecraft:the_nether"}] run scoreboard players set DimensionB T 2
execute as @a[team=B,nbt={Dimension: "minecraft:the_end"}] run scoreboard players set DimensionB T 3

execute as @a[team=C,nbt={Dimension: "minecraft:overworld"}] run scoreboard players set DimensionC T 1
execute as @a[team=C,nbt={Dimension: "minecraft:the_nether"}] run scoreboard players set DimensionC T 2
execute as @a[team=C,nbt={Dimension: "minecraft:the_end"}] run scoreboard players set DimensionC T 3

execute as @a[team=D,nbt={Dimension: "minecraft:overworld"}] run scoreboard players set DimensionD T 1
execute as @a[team=D,nbt={Dimension: "minecraft:the_nether"}] run scoreboard players set DimensionD T 2
execute as @a[team=D,nbt={Dimension: "minecraft:the_end"}] run scoreboard players set DimensionD T 3

execute as @a[team=E,nbt={Dimension: "minecraft:overworld"}] run scoreboard players set DimensionE T 1
execute as @a[team=E,nbt={Dimension: "minecraft:the_nether"}] run scoreboard players set DimensionE T 2
execute as @a[team=E,nbt={Dimension: "minecraft:the_end"}] run scoreboard players set DimensionE T 3

# 清除维度人数记录
scoreboard players set CountO T 0
scoreboard players set CountN T 0
scoreboard players set CountE T 0

# 计算每个维度多所少人
execute as @a[nbt={Dimension: "minecraft:overworld"}] run execute as @s at @s unless score @s Reset matches 0 run scoreboard players operation CountO T += ONE T
execute as @a[nbt={Dimension: "minecraft:the_nether"}] run execute as @s at @s unless score @s Reset matches 0 run scoreboard players operation CountN T += ONE T
execute as @a[nbt={Dimension: "minecraft:the_end"}] run execute as @s at @s unless score @s Reset matches 0 run scoreboard players operation CountE T += ONE T