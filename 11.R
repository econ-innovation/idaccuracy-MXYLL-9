getwd()
mypath ="e:/mxyycode/rr/assignment_idaccuracy/Aminer"
file.exists(mypath)
setwd(mypath)
merged_data_list<- data.frame()
merged_data_list<- do.call(rbind, lapply(files, read.csv))
write.csv(merged_data_list, "merged_data_list.csv", row.names = FALSE)

