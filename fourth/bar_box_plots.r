library(ggplot2)
library(gcookbook)
data(cabbage_exp)

cabbage_exp

ggplot(cabbage_exp, aes(x = Date, y = Weight, fill = Cultivar)) +
  geom_bar(stat = "identity", position = "dodge") + 
  geom_text(aes(label = Weight), vjust = 1.5, colour="white", position = position_dodge((.9)), size = 7) +
  ylim(0,3.5)

  library(MASS)
  data(birthwt)
  str(birthwt)
  head(birthwt)
  boxplot(birthwt$bwt~birthwt$age, data = birthwt, xlab = "Mother's Age in years", ylab = "Birth Weight in grams", main = "Birth weight")
  # https://stat.ethz.ch/R-manual/R-devel/library/MASS/html/birthwt.html