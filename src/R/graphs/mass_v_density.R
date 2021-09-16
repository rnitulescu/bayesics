#! /usr/bin/env Rscript

setEPS()
postscript("../../tex/images/mass_v_density.eps", family="serif",
           width=8, height=5)
par(mfrow=c(1,2), cex.lab=1.5, cex.main=1.5)

plot(x=0:10, y=dbinom(x=0:10, size=10, prob=0.5), type="h", col="blue",
     main="Fonction de masse de probabilité\nBinomiale(10, 0.5)",
     xlab="Nombre de succès (x)", ylab="Probabilité (masse): p(x)")
points(x=0:10, y=dbinom(x=0:10, size=10, prob=0.5), pch=19, col="blue")

curve(dnorm, -4, 4, 1000, col="blue",
      main="Fonction de densité de probabilité\nNormale(0, 1)",
      xlab="x", ylab="Probabilité (densité): p(x)")
dev.off()

