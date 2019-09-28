# barplot dates and weights
library(gcookbook)
data("cabbage_exp")
cabbage_exp

dates <- levels(cabbage_exp$Date)
data <- matrix(data = cabbage_exp$Weight, nrow=2, byrow = TRUE, dimnames = list(levels(cabbage_exp$Cultivar), levels(cabbage_exp$Date)))
data

barplot(data, 
        ylim = c(0,3.5), 
        col = c("Green", "Blue"),
        xlab = "Dates",
        ylab = "Weights",
        main = "Weights of cabbages, by date and cultivation style",
        axes = TRUE,
        legend = TRUE,
        beside = TRUE)

#box and wplot
library(MASS)
data("birthwt")
head(birthwt)
str(birthwt)
boxplot(birthwt$bwt~birthwt$age, xlab = "Age years", ylab = "Weights")
min(birthwt$age)
max(birthwt$age)
