mydata = read.delim("~/Documents/DSR_lab/First/first_lab.csv",header = TRUE, sep = ",")
mydata
quiz = c(7.5, 8, 9, 9)
mydata <- cbind(mydata, quiz)
mydata
write.table(mydata, "~/Documents/DSR_lab/First/first_lab_exported.txt", sep = "\t", col.names = FALSE, row.names = FALSE)