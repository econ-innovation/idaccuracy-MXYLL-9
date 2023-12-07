

# 设置工作路径
setwd("e:/mxyycode/rr/assignment_idaccuracy/Aminer")

# 创建新数据框
data_list <- list()

# for循环读取所有csv文件
library(readr)
for (file in list.files(pattern = "\\.csv$")) {
  print(file)
file_path <- file.path("e:/mxyycode/rr/assignment_idaccuracy/Aminer", file)
temp <- read_csv(file_path)
data_list[[file]] <- temp
}

# 合并成一个data.frame
data <- do.call(rbind, data_list)

# 输出列名
print(names(data))

#输出合并后数据框
print(data)

#apply家族其他方法
file_list <- list.files("e:/mxyycode/rr/assignment_idaccuracy/Aminer", full.names = TRUE)
data_list <- lapply(file_list, read.csv)
data <- do.call(rbind, data_list)
print(head(data)
      
# 
write_csv(data,"data_list.csv")
