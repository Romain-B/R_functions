
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
