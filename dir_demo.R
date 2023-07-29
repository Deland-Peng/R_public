
####自动生成文件夹####
for(ft in c()){
  #设定保存目录
  output_dir=paste0("Stage3/result/AUC/",ft,"_features")
  if (!dir.exists(output_dir)){
    dir.create(output_dir)
  } else {
    print("Dir already exists!")
  }
  
}