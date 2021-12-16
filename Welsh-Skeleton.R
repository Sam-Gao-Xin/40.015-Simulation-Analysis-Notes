## To play around with Welsh method, if useful
library(zoo)


n.rep <- 25  #no. of replications for taking average of matching observations
mvavg.window < 30 #moving average window size

## Generate one simulation run over time
simulateOneRun <- function () {
  #<fill with code for generating 1 simulation run> 
}

# Step 1: Generate n.rep number of independent replications
result <- replicate(n.rep,simulateOneRun())

#Step 2: Take average of matching observations
avg <- rowMeans(result)

#Step 3: Take moving average
mavg <- rollmean(avg,mvavg.window)

# Determine burn-in period by inspecting the plot
plot(mavg,ylim= <fill y-axis range suitable for the problem>)
