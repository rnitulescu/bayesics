## Data
y <- c(149, 127, 141, 130, 160)
sigma <- 10

## Likelihood
logLikl <- Vectorize(function(x) {
  sum(dnorm(y, mean=x, sd=sigma, log=T))
})

## Prior (mean=136, sd=12)
prior <- function(x) {
  dnorm(x, mean=136, sd=12)
}

logPrior <- function(x) {
  dnorm(x, mean=136, sd=12, log=T)
}

## Marginal likelihood (denominator)
integrand <- Vectorize(function(x) {
  exp(logLikl(x) + logPrior(x))
})
#integrate(integrand, lower=-Inf, upper=Inf)
margLikl <- integrate(integrand, lower=136-(10*12), upper=136+(10*12))[["value"]]

## Posterior
posterior <- Vectorize(function(x) {
  exp(logLikl(x) + logPrior(x)) / margLikl
})

## Plot
curve(posterior, from=136-(2*12), to=136+(2*12), n=1000, lwd=1.5, col="blue")
curve(prior, from=136-(2*12), to=136+(2*12), n=1000, add=T)

integrate(posterior, lower=136-(10*12), upper=136+(10*12))[["value"]]

