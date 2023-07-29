#文件处理#

#参考链接：https://wap.sciencenet.cn/blog-2577109-1297251.html

####文件copy####
  #公共参数
  file_com_dir <- "data/copy/from_"
  file_ex_name <-"result_"
  target_com_dir<-"data/copy/to_"
  
for(fc in 1:2){
  for (fold in c(1,2,3,4,5)){
    
    #1.文件地址
      #完整地址：data/copy/from_1/result_1.txt 
    file_dir <- paste0(file_com_dir,fc,"/",file_ex_name,fold,".txt")
    
    #2.目标地址
      #完整地址：data/copy/to_1/
    output_dir=paste0(target_com_dir,fc,"/")
      #自动创建目标文件夹
    if (!dir.exists(output_dir)){dir.create(output_dir)}
    
    #3.copy操作
    file.copy(from = file_dir,to =output_dir)
  }

}