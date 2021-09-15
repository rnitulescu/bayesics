#! /usr/bin/env Rscript

prior <- c(0.25, 0.25, 0.25, 0.25)
posterior <- c(0.10, 0.50, 0.30, 0.10)

setEPS()
postscript("../../tex/images/credibility.eps", family="serif",
           width=8, height=5)
par(mfrow=c(1,2), cex.lab=1.5, cex.main=1.5)
barplot(prior, ylim=c(0,1),
        main="a priori: avant observations",
        xlab="Hypothéses", ylab="Crédibilité")
barplot(posterior, ylim=c(0,1),
        main="a posteriori: après observations",
        xlab="Hypothéses", ylab="Crédibilité")
dev.off()

