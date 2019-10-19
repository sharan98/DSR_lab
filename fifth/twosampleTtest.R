# The birth weights(kg) of two random sample of infants belonging to rural and urban 
# areas are given below?                                                                                                           10  marks
# Rural: 3.1, 2.9, 2.8, 3.0,  2.7, 3.1, 2.6, 2.8, 2.9 ,3.0
# Urban: 3.5, 3.0, 3.1, 3.2, 2.9, 3.4, 3.0, 3.4, 2.8, 3.4
# Perform two sample t-test to Infer whether the difference between the two means is 
# statistically significant or not at  ??=0.05 (Use t-distribution table) ?
#   Develop a suitable  R code to perform t-test  by using the above dataset.

library(visualize)

rural <- c(3.1, 2.9, 2.8, 3.0, 2.7, 3.1, 2.6, 2.8, 2.9, 3.0)
urban <- c(3.5, 3.0, 3.1, 3.2, 2.9, 3.4, 3.0, 3.4, 2.8, 3.4)
df = data.frame(rural, urban)
df
means = apply(df, MARGIN=2, FUN = mean)
variance = apply(df, MARGIN=2, FUN = var)
std_dev = apply(df, MARGIN=2, FUN = sd)
stats = matrix(c(means, variance, std_dev), byrow = TRUE, ncol = 2, dimnames = list(c("mean", "variance", "std_dev"), names(df)))
stats

#Obtaining t-calculated value
ttest = t.test(x = rural, y = urban, var.equal = TRUE, conf.level = 0.95)
ttest
t = abs(ttest$statistic)
t

q = qt(p = 0.05/2, df = 18, lower.tail = FALSE)
q
visualize.t(stat = c(-t, t), df=18, section="tails")
visualize.t(stat = c(-q, q), df=18, section="tails")
#Obtain t value for two sided test at 0.05 significance levels
#From t distribution table or t-significant,t-critical