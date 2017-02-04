
area_poly <- function(cur, val, side="gauche", col="grey", m=0, p=0)
{
  if (side=="droit")
  {
    pos <- min(which(cur$x > val)) -m +p
    end <- length(cur$x)
    end;pos
  }
  else
  {
    pos <- max(which(cur$x < val)) -m +p
    end <- 1
    end;pos
  }
  polygon(x=c(cur$x[end:pos],cur$x[pos],cur$x[end]),y=c(cur$y[end:pos],0,0),col=col, border=NA)
}


#Examples
par(mar=c(3,3,3,3))

#Ex1:
s <- curve(2*x+1, col="mediumorchid4", lwd=3)
area_poly(s, 0.8)


#Ex2:
a <- curve(dnorm(x,mean=mu1, sd=sig), type="l", lwd=3, 
     main="Theoric probability densities",
     col="hotpink2",
     xlab="x", ylab="Density", xlim=c(-3,6))

b <- curve(dnorm(x,mean=mu2, sd=sig), 
      type="l", lwd=3, lty=2, col="mediumorchid4", add=T)

abline(v=qnorm(0.025,mean=mu1, sd=sig), lwd=2, col="royalblue")
abline(v=qnorm(0.025,mean=mu2, sd=sig), lwd=2, col="royalblue", lty=2)
abline(v=qnorm(0.975,mean=mu1, sd=sig), lwd=2, col="seagreen3")
abline(v=qnorm(0.975,mean=mu2, sd=sig), lwd=2, col="seagreen3", lty=2)

area_poly(b, qnorm(0.975,mean=mu1, sd=sig), side = "gauche", col="limegreen")
area_poly(a, qnorm(0.975,mean=mu1, sd=sig), side = "droit", col="firebrick2", m=1)