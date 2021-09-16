## Prepare plots
setEPS()
postscript("../../tex/images/weight.eps", family="serif",
           width=6, height=5)
par(cex.lab=1.5, cex.main=1.5)
curve(posterior, from=lim[2], to=lim[3], n=1000,
      xlab=expression(mu), ylab="Probability density",
      lwd=1.5, col="blue")
curve(prior, from=lim[2], to=lim[3], n=1000, add=T)
legend("topleft", c("Prior, N(136, 12)","Posterior"),
       lwd=2, col=c("black","blue"), bty="n")
dev.off()

