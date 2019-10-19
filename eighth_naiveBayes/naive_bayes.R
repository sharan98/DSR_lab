library(e1071)
sample <- read.csv("sample1.csv", sep=",", header=TRUE)
head(sample)

traindata <- as.data.frame(sample[1:14,])
testdata <- as.data.frame(sample[15,])
traindata
testdata

model <- naiveBayes(Enrolls ~ Age+Income+JobSatisfaction+Desire,
                    traindata)

# display model
model


# predict with testdata
results <- predict (model,testdata)
# display results
results
