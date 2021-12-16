# To obtain n samples of total payout in 1 year
# Here total payout S_N = X_1 + ... + X_N
# N is assumed to be from Poisson distribution with rate = r
# X_i are assumed to be iid exponentially distributed with mean = m

# To obtain 1 samples of total payout
SimulateOneRun <- function(r,m)
{
    # To generate one sample of no. of claims in a year
    N <- rpois(1,r) 
    
    # To obtain N claim samples
    X <- rexp(N,1/m)
    
    # To obtain total payout
    S <- sum(X)
  
    return(S)
}

# For obtaining n samples of the total payout 
TotalPayout <- function(n,r,m)
{
  S <- replicate(n,SimulateOneRun(r,m)) 
  return(S)
}