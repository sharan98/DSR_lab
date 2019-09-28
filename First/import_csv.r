mydata = read.csv("~/Documents/DSR_lab/First/first_lab.csv", header = TRUE)
mydata
summary(mydata)
barplot(mydata$Marks,xlab = "Names", ylab = "Marks", names.arg = mydata$Name, main = "Marks", ylim = c(0,100), col = "light green")
barplot(mydata$Attendance,xlab = "Names", ylab = "Attendance", names.arg = mydata$Name, main = "Attendance", ylim = c(0,100))
