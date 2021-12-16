# To simulate  Poisson Process with a given costant rate
GenPP <- function(T, rate)
{
  # Initializations
  EventTimes <- NULL
  
  # Generate the first interarrival time
  U <- runif(1,0,1)
  t <- -log(1-U)/rate
  
  # Loop to generate event times
  while(t < T)
  {
    EventTimes <- c(EventTimes, t)
    U <- runif(1,0,1)
    t <- t - log(1-U)/rate  
  }
  
  return(EventTimes)
}

# To view output
T <- 10
rate <- 1
EventTimes <- GenPP(T,rate)
N <- length(EventTimes)
plot(c(0,T),c(0,0),type='l',xlab='Time',ylab='',yaxt='n');
points(EventTimes,rep(0,N),pch='|', col = "red", cex=0.85)

