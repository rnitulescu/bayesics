#! /usr/bin/env Rscript

library(mnormt)

setEPS()
postscript("../../tex/images/joint_densities.eps", family="serif",
           width=8, height=5)
par(mfrow=c(1,2), cex.lab=1.5, cex.main=1.5)

## Independent case
x1 <- seq(-4, 4, 0.1)
x2 <- seq(-5, 5, 0.1)
mean <- c(0, 0)
cov <- matrix(c(2, 0, 0, 2), nrow=2)
f <- function(x1, x2) dmnorm(cbind(x1, x2), mean, cov)
y <- outer(x1, x2, f)
contour(x1, x2, y, main="x et y sont indépendents",
        xlab="x", ylab="y")

## Positively correlated case
rm(cov, f, y)
cov <- matrix(c(2, 2*0.75, 2*0.75, 2), nrow=2)
f <- function(x1, x2) dmnorm(cbind(x1, x2), mean, cov)
y <- outer(x1, x2, f)
contour(x1, x2, y, main="x et y ont une corrélation positive",
        xlab="x", ylab="y")

dev.off()

