## Data
y <- c(149, 127, 141, 130, 160)
sigma <- 10
lim <- c(136-10*12, 136-2*12, 136+2*12, 136+10*12)

## Likelihood (log-scale)
logLikl <- Vectorize(function(x) {
  sum(dnorm(y, mean=x, sd=sigma, log=T))
})

## Prior (mean=136, sd=12)
prior <- function(x) {
  dnorm(x, mean=136, sd=12)
}

## Log-scale
logPrior <- function(x) {
  dnorm(x, mean=136, sd=12, log=T)
}

