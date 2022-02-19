data("rock")

# requirement 4

plot(rock$perm,rock$area,pch = 3,xlab = "perm",ylab = "area",main = "area of the rock relative to its perm")

# requirement 5

library(dplyr)

data("rock")

filtered <- rock %>% 
  filter(rock$shape > 0.3) %>%
  group_by(mean(perm))

filtered

# requirement 6

model <- lm(rock$area ~ rock$peri + rock$shape + rock$perm)
model
newarea<-model$coefficients[1]+model$coefficients[2]*100+model$coefficients[3]*0.5+model$coefficients[4]*5000
print(paste("the predicted area is",newarea))