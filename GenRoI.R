# To obtain n samples of RoI 
# example given in the lecture


# To generate one sample
SimulateOneRun <- function() {
   # Generate a sample of Uniform[0,1]
    U <- runif(1,0,1)
  
    # Check the chain of IF conditions
    if (U <= 0.07) 
      X <- 9
    else if (0.07 < U && U <= 0.22)
      X <- 10
    else if (0.22 < U && U <= 0.45)
      X <- 11
    else if (0.45 < U && U <= 0.7)
      X <- 12
    else if (0.7 < U && U <= 0.85)
      X <- 13
    else if (0.85 < U && U <= 0.97)
      X <- 14
    else
      X <- 15

    return(X)
	
}


# To generate n samples
GenRoI <- function(n) {
  # Replicate the function block SimulateOneRun n times to get n samples
   X <- replicate(n,SimulateOneRun())
  
  return(X)
}



