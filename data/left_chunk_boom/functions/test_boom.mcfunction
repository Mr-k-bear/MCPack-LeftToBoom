
# 清除安全标签缓存
scoreboard players set SafeA T 0
scoreboard players set SafeB T 0
scoreboard players set SafeC T 0
scoreboard players set SafeD T 0
scoreboard players set SafeE T 0

# 如果一个团队有3-5名玩家，那么这个团队 100% 安全
execute if score TeamCountA T matches 3..5 run scoreboard players set SafeA T 1
execute if score TeamCountB T matches 3..5 run scoreboard players set SafeB T 1
execute if score TeamCountC T matches 3..5 run scoreboard players set SafeC T 1
execute if score TeamCountD T matches 3..5 run scoreboard players set SafeD T 1
execute if score TeamCountE T matches 3..5 run scoreboard players set SafeE T 1

# 当一个维度只有一个玩家时，该玩家所在团队安全
execute if score TeamCountA T matches 1 if score DimensionA T matches 1 if score CountO T matches 1 run scoreboard players set SafeA T 1
execute if score TeamCountA T matches 1 if score DimensionA T matches 2 if score CountN T matches 1 run scoreboard players set SafeA T 1
execute if score TeamCountA T matches 1 if score DimensionA T matches 3 if score CountE T matches 1 run scoreboard players set SafeA T 1

execute if score TeamCountB T matches 1 if score DimensionB T matches 1 if score CountO T matches 1 run scoreboard players set SafeB T 1
execute if score TeamCountB T matches 1 if score DimensionB T matches 2 if score CountN T matches 1 run scoreboard players set SafeB T 1
execute if score TeamCountB T matches 1 if score DimensionB T matches 3 if score CountE T matches 1 run scoreboard players set SafeB T 1

execute if score TeamCountC T matches 1 if score DimensionC T matches 1 if score CountO T matches 1 run scoreboard players set SafeC T 1
execute if score TeamCountC T matches 1 if score DimensionC T matches 2 if score CountN T matches 1 run scoreboard players set SafeC T 1
execute if score TeamCountC T matches 1 if score DimensionC T matches 3 if score CountE T matches 1 run scoreboard players set SafeC T 1

execute if score TeamCountD T matches 1 if score DimensionD T matches 1 if score CountO T matches 1 run scoreboard players set SafeD T 1
execute if score TeamCountD T matches 1 if score DimensionD T matches 2 if score CountN T matches 1 run scoreboard players set SafeD T 1
execute if score TeamCountD T matches 1 if score DimensionD T matches 3 if score CountE T matches 1 run scoreboard players set SafeD T 1

execute if score TeamCountE T matches 1 if score DimensionE T matches 1 if score CountO T matches 1 run scoreboard players set SafeE T 1
execute if score TeamCountE T matches 1 if score DimensionE T matches 2 if score CountN T matches 1 run scoreboard players set SafeE T 1
execute if score TeamCountE T matches 1 if score DimensionE T matches 3 if score CountE T matches 1 run scoreboard players set SafeE T 1

# 如果一个团队有两个玩家，且这个团队所处维度只有两个玩家时，这个团队安全
execute if score TeamCountA T matches 2 if score DimensionA T matches 1 if score CountO T matches 2 run scoreboard players set SafeA T 1
execute if score TeamCountA T matches 2 if score DimensionA T matches 2 if score CountN T matches 2 run scoreboard players set SafeA T 1
execute if score TeamCountA T matches 2 if score DimensionA T matches 3 if score CountE T matches 2 run scoreboard players set SafeA T 1

execute if score TeamCountB T matches 2 if score DimensionB T matches 1 if score CountO T matches 2 run scoreboard players set SafeB T 1
execute if score TeamCountB T matches 2 if score DimensionB T matches 2 if score CountN T matches 2 run scoreboard players set SafeB T 1
execute if score TeamCountB T matches 2 if score DimensionB T matches 3 if score CountE T matches 2 run scoreboard players set SafeB T 1

execute if score TeamCountC T matches 2 if score DimensionC T matches 1 if score CountO T matches 2 run scoreboard players set SafeC T 1
execute if score TeamCountC T matches 2 if score DimensionC T matches 2 if score CountN T matches 2 run scoreboard players set SafeC T 1
execute if score TeamCountC T matches 2 if score DimensionC T matches 3 if score CountE T matches 2 run scoreboard players set SafeC T 1

execute if score TeamCountD T matches 2 if score DimensionD T matches 1 if score CountO T matches 2 run scoreboard players set SafeD T 1
execute if score TeamCountD T matches 2 if score DimensionD T matches 2 if score CountN T matches 2 run scoreboard players set SafeD T 1
execute if score TeamCountD T matches 2 if score DimensionD T matches 3 if score CountE T matches 2 run scoreboard players set SafeD T 1

execute if score TeamCountE T matches 2 if score DimensionE T matches 1 if score CountO T matches 2 run scoreboard players set SafeE T 1
execute if score TeamCountE T matches 2 if score DimensionE T matches 2 if score CountN T matches 2 run scoreboard players set SafeE T 1
execute if score TeamCountE T matches 2 if score DimensionE T matches 3 if score CountE T matches 2 run scoreboard players set SafeE T 1

# 清除两人队伍计数
scoreboard players set TeamTwoNum T 0

# 检测两个玩家队伍数量
execute if score TeamCountA T matches 2 run scoreboard players operation TeamTwoNum T += ONE T
execute if score TeamCountB T matches 2 run scoreboard players operation TeamTwoNum T += ONE T
execute if score TeamCountC T matches 2 run scoreboard players operation TeamTwoNum T += ONE T
execute if score TeamCountD T matches 2 run scoreboard players operation TeamTwoNum T += ONE T
execute if score TeamCountE T matches 2 run scoreboard players operation TeamTwoNum T += ONE T

# 清除是否有一个维度有4个玩家记录
scoreboard players set DimensionFour T 0

# 检测是否存在用有4个玩家的维度
execute if score CountO T matches 4 run scoreboard players set DimensionFour T 1
execute if score CountN T matches 4 run scoreboard players set DimensionFour T 1
execute if score CountE T matches 4 run scoreboard players set DimensionFour T 1

# 如果存在两个有两个玩家的队伍，且某一维度存在4个人，则这个两个队伍安全
execute if score TeamCountA T matches 2 if score TeamTwoNum T matches 2 if score DimensionFour T matches 1 run scoreboard players set SafeA T 1
execute if score TeamCountB T matches 2 if score TeamTwoNum T matches 2 if score DimensionFour T matches 1 run scoreboard players set SafeB T 1
execute if score TeamCountC T matches 2 if score TeamTwoNum T matches 2 if score DimensionFour T matches 1 run scoreboard players set SafeC T 1
execute if score TeamCountD T matches 2 if score TeamTwoNum T matches 2 if score DimensionFour T matches 1 run scoreboard players set SafeD T 1
execute if score TeamCountE T matches 2 if score TeamTwoNum T matches 2 if score DimensionFour T matches 1 run scoreboard players set SafeE T 1

# 清除记录只有一个玩家的队伍是否爆炸
scoreboard players set OneNumBoom T 0

# 清除爆炸记录
scoreboard players set BoomA T 0
scoreboard players set BoomB T 0
scoreboard players set BoomC T 0
scoreboard players set BoomD T 0
scoreboard players set BoomE T 0

# 让只有一个人的不安全队伍爆炸
execute if score TeamCountA T matches 1 if score SafeA T matches 0 run scoreboard players set BoomA T 1
execute if score TeamCountA T matches 1 if score SafeA T matches 0 run scoreboard players set OneNumBoom T 1

execute if score TeamCountB T matches 1 if score SafeB T matches 0 run scoreboard players set BoomB T 1
execute if score TeamCountB T matches 1 if score SafeB T matches 0 run scoreboard players set OneNumBoom T 1

execute if score TeamCountC T matches 1 if score SafeC T matches 0 run scoreboard players set BoomC T 1
execute if score TeamCountC T matches 1 if score SafeC T matches 0 run scoreboard players set OneNumBoom T 1

execute if score TeamCountD T matches 1 if score SafeD T matches 0 run scoreboard players set BoomD T 1
execute if score TeamCountD T matches 1 if score SafeD T matches 0 run scoreboard players set OneNumBoom T 1

execute if score TeamCountE T matches 1 if score SafeE T matches 0 run scoreboard players set BoomE T 1
execute if score TeamCountE T matches 1 if score SafeE T matches 0 run scoreboard players set OneNumBoom T 1

# 让有两个玩家的不安全队伍爆炸，如果一个人的不安全队伍炸过了，那就不炸了
execute if score TeamCountA T matches 2 if score SafeA T matches 0 if score OneNumBoom T matches 0 run scoreboard players set BoomA T 1
execute if score TeamCountB T matches 2 if score SafeB T matches 0 if score OneNumBoom T matches 0 run scoreboard players set BoomB T 1
execute if score TeamCountC T matches 2 if score SafeC T matches 0 if score OneNumBoom T matches 0 run scoreboard players set BoomC T 1
execute if score TeamCountD T matches 2 if score SafeD T matches 0 if score OneNumBoom T matches 0 run scoreboard players set BoomD T 1
execute if score TeamCountE T matches 2 if score SafeE T matches 0 if score OneNumBoom T matches 0 run scoreboard players set BoomE T 1