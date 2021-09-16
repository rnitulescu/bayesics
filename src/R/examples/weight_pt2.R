## Marginal likelihood (denominator)
integrand <- Vectorize(function(x) {
  exp(logLikl(x) + logPrior(x))
})

## Integrate to get normalizing constant
margLikl <- integrate(integrand,
                      lower=lim[1], upper=lim[4])

## Posterior: likelihood * prior / marginal lik.
posterior <- Vectorize(function(x) {
  exp(logLikl(x) + logPrior(x)) / margLikl[["value"]]
})

## Check that posterior is proper and integrates to 1
intPost <- integrate(posterior, lower=lim[1], upper=lim[4])
print(intPost[["value"]])

