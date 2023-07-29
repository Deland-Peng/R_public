####list:同时用到列名和列名对应的向量####

#建立向量list
#[[1]]
#[1] 2 5 5
list_model <- list(
  c(2,5,5), #49
  c(1,2,3), #61
  c(3,2,1)  #90
  
)

#命名向量集
#$`49`
#[1] 2 5 5
names(list_model) <- c(49,61,90)

#遍历list中的向量元素
for(ft in c(1:length(list_model))){
  #获取向量集
  models <-list_model[ft] 
  #获取向量集的名字
  fc<-names(models)
  #根据名字获取找到对应的文件夹
  output_dir=paste0("Stage3/result/AUC/",fc,"_features")
  print(output_dir) #"Stage3/result/AUC/49_features"
  
  #分别获取对应向量值
  n_lasso <-models[[1]][1] #理解：models=list(list("49":2,5,5)) ,models[1]=list("49":2,5,5) ,models[[1]]=c(2,5,5) ,models[[1]][1] = 2
  n_rsf <-models[[1]][2] #models=list(list("49":2,5,5)) ,models[1]=list("49":2,5,5) ,models[[1]]=c(2,5,5) ,models[[1]][1] = 5
  n_xgb <-models[[1]][3] #models=list(list("49":2,5,5)) ,models[1]=list("49":2,5,5) ,models[[1]]=c(2,5,5) ,models[[1]][1] = 5
  
  #根据dir和n值，找到对应的文件
  print(n_lasso)
  print(n_rsf)
  print(n_xgb)
  
  # [1] "Stage3/result/AUC/49_features"
  # [1] 2
  # [1] 5
  # [1] 5
  # [1] "Stage3/result/AUC/61_features"
  # [1] 1
  # [1] 2
  # [1] 3
  # [1] "Stage3/result/AUC/90_features"
  # [1] 3
  # [1] 2
  # [1] 1
}