data("rock")

# requirement 1
funct <- function(x , vect){
  index <- 1
  flag <- 0 
  for(i in vect){
    if(x == i){
      flag <- 1
      break
    }
    else{
      index <- index + 1
    }
  }
  if(flag == 0){
    print("the value not found in the vector")
  }
  else{
    return(index)
  }
}

x <- c(10,20,30,40,50)
funct(40,x)

# requirement 2

shape <- rock$shape[rock$perm == 82.4 & rock$peri > 4000 & rock$area < 11111]
print(paste("the shape is ",shape))

# requirement 3

newShape <- rock$shape * 20000
plot(density(rock$area))
lines(density(newShape))