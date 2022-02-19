# bonus 

library(e1071)
data("rock")

trained_data <- naiveBayes(rock$peri ~ ., data = rock)
tested_data  <- predict(trained_data, as.data.frame(rock))
table(tested_data)