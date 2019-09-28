mydata = read.csv("~/Documents/DSR_lab/First/first_lab.csv", header = TRUE)
income = c(300000, 500000, 1200000, 300000, 500000, 600000, 500000)
mydata = cbind(mydata, income)
category = vector(mode = "character", length = length(income))
category[income >= 1000000] <- "Highest"
category[income >= 500000 & income < 1000000] <- "Middle"
category[income < 500000] <- "Low"
f = factor(category, levels = c("Highest", "Middle", "Low"))
mydata = cbind(mydata, category)
mydata