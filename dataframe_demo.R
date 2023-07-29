####删除行或列####
    #删除第1到10行：
      df[-c(1:10),]
    #删除第5到10列：
      df[,-c(5:10)]

#按名字删除#
      #无论行列，可以找出对应索引或构造相同长度TRUE/FALSE的向量，把不需要的行/列删除
      
      #index
        #-which(colnames(df) %in% c("a","b"))
        #-grep("a|b",colnames(df)
      #T/F vector
        #!colnames(df) %in% c("a","b")
        #!grepl("a|b", colnames(df))
      
#使用函数#
            subset(df, select=-c(a,b))
            dplyr::select(df, -c(a,b))

 #原文链接：https://blog.csdn.net/ofoliao/article/details/106593035
            
            
####增加行或列####
            # 创建一个数据框
            df <- data.frame(
              name = c("Tom", "Jerry", "Spike"),
              age = c(5, 6, 7),
              gender = c("male", "male", "female")
            )
            
            # 添加一个新的列
            df$favorite_color <- c("blue", "red", "yellow")
            
            # 添加一个新的行
            new_row <- data.frame(name = "Tyke", age = 2, gender = "male", favorite_color = "green")
            df <- rbind(df, new_row)
            
            
            # 解释
            #
            # 在上述代码中，我们首先创建了一个数据框 df，然后使用 $ 运算符添加了一个名为 favorite_color 的新列，
            # 该列的值分别为 "blue", "red", "yellow"。
            # 接着我们又使用 rbind() 函数添加了一行数据，该行数据的值为 "Tyke", 2, "male", "green"。
            # 除了数据框，对于向其他数据结构如向量、列表、数组等添加新元素的操作也类似，具体实现方法请参考 R 语言文档。

            # 作者：谁的LC
            # 链接：https://www.zhihu.com/question/604850066/answer/3059859094
            
####获取行数或列数####
            

 #【列数】#

            # 语法：
            ncol(object)

            # 我们需要输入包含数据的对象。这个对象可以是一个数据框，一个矩阵，甚至是一个数据集。
            # 
            # 例1：
            # 在下面的例子中，我们创建了一个矩阵。接下来我们会用 ncol()函数获取矩阵的列数。

            rm(list = ls())
            data = matrix(c(10,20,30,40),2,6)
            print(data)
            print('Number of columns of the matrix: ')
            print(ncol(data))

            # 输出：
            # > print(data)
            # [,1] [,2] [,3] [,4] [,5] [,6]
            # [1,]   10   30   10   30   10   30
            # [2,]   20   40   20   40   20   40
            # > print('Number of columns of the matrix: ')
            # [1] "Number of columns of the matrix: "
            # > print(ncol(data))
            # [1] 6


#【行数】#
            
            # 语法：
             nrow(object)

            # 例1：
            # 在这个例子中，我们用 R 中的 matrix()函数创建了一个矩阵。然后，我们将用 nrow() 函数获取矩阵的行数，如下所示：

                rm(list = ls())
                data = matrix(c(10,20,30,40),2,6)
                print(data)
                print('Number of rows of the matrix: ')
                print(nrow(data))

            # 输出：
                
            # > print(data)
            # [,1] [,2] [,3] [,4] [,5] [,6]
            # [1,]   10   30   10   30   10   30
            # [2,]   20   40   20   40   20   40
            # 
            # "Number of rows of the matrix: "
            # [1] 2
                
#出处：https://www.digitalocean.com/community/tutorials/get-number-of-rows-and-columns-in-r
 #中文：https://zhuanlan.zhihu.com/p/616770031                
