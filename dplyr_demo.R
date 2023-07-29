####dplyr 数据框合并####

#11 合并连接【出处：https://zhuanlan.zhihu.com/p/596787028】


#11.1 dplyr包合并连接

inner_join(x,y, by = "z")#内连接，保留同时在x,y中的
left_join(x,y, by = "z")#左连接，保留所有x
right_join(x,y, by = "z")#右连接，保留所有y
full_join(x,y, by = c("a" = "b"))#全连接
#举例
 inner_join(df1f1,df2f1, by = "id")#只保留df1f1和df2f1共有的id
#id C1 C2 C3 C4
#1  a  7  1 19  7
#2  d 19  2  1 19
 left_join(df1f1,df2f1, by = "id") #保留所有df1f1的id，没有的值NA
#id C1 C2 C3 C4
# 1  a  7  1 19  7
# 2  c 14 11 NA NA
# 3  d 19  2  1 19
 right_join(df1f1,df2f1, by = "id") #保留所有df2f1的id，没有的值NA
# id C1 C2 C3 C4
# 1  a  7  1 19  7
# 2  d 19  2  1 19
# 3  b NA NA  2 18
 full_join(df1f1,df2f1, by = "id") #保留所有df1f1和df2f1的id，没有的值NA
# id C1 C2 C3 C4
# 1  a  7  1 19  7
# 2  c 14 11 NA NA
# 3  d 19  2  1 19
# 4  b NA NA  2 18
 
# 11.2 merge合并
# （功能同dplyr包合并连接）

merge(data1, data2, by="id") # 按列合并，按“id”列匹配,(by, by.x, by.y)
merge(data1, data2, by="id") # 只返回id相互匹配的行
merge(data1, data2, by="id", all.x = T) # 返回data1（前）的所有行
merge(data1, data2, by="id", all.y = T) # 返回data2（后）的所有行

# 11.3 cbind合并列
# （直接合并，不能匹配，行数不同不能合并）
cbind(data1, data2) # 按列合并，直接合并，无匹配

# 11.4 rbind合并行
# （直接合并，不能匹配，列数不同不能合并）
rbind(data1, data2) # 按行合并，直接合并，无匹配


# 12 dplyr包筛选连接
semi_join(x,y,by = "z")#保留x表中与y表匹配的值
anti_join(x,y,by = c("a" = "b"))#去除x表中与y表匹配的值
