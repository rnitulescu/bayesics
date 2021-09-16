## Load packages
library(rstan)

## Data
myseed <- 20210915
set.seed(myseed)
y <- c(149, 127, 141, 130, 160)
sigma <- 10

## Prepare data for stan
input <- list(N=length(y), y=y, sigma=sigma)

## Compile and sample from model
model <- stan_model(file="weight.stan")
fit <- sampling(object=model, data=input, seed=myseed, pars="mu",
                          chains=5, iter=4000, warmup=1500, thin=1)
print(fit)
#model.mcmc <- as.data.frame(extract(fit, pars="mu"))
#hist(model.mcmc[["mu"]], breaks=100, probability=T, add=T)

