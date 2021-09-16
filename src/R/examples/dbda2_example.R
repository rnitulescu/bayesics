## Krushcke 4 balls example

## 3 balls received (all same size, but size is not known)
y <- c(1.77, 2.23, 2.7)

## prior
prior <- c(0.25, 0.25, 0.25, 0.25)

## Define likelihood function
lik <- Vectorize(function(size) {
    prod(dnorm(y, size, 1.16))
})

## Solve posterior
posterior <- (lik(1:4) * prior) / sum(lik(1:4) * prior)
print(posterior)

## plot
par(mfrow=c(1, 2))
barplot(prior, ylim=c(0,1))
barplot(posterior, ylim=c(0,1))

