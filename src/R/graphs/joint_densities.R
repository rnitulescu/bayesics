#! /usr/bin/env Rscript

library(mnormt) ## Need to install package...

setEPS()
postscript("../../tex/images/joint_densities.eps", family="serif",
           width=8, height=5)
par(mfrow=c(1,2), cex.lab=1.5, cex.main=1.5)

## Independent case
## TODO

## Positively correlated case
x1 <- seq(-4, 4, 0.1)
x2 <- seq(-5, 5, 0.1)
mean <- c(0, 0)
cov <- matrix(c(2, -1, -1, 2), nrow=2)
f <- function(x1, x2) dmnorm(cbind(x1, x2), mean, cov)
y <- outer(x1, x2, f)
contour(x1, x2, y)

dev.off()

