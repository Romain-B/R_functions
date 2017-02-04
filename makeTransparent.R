#Solution based on answer given here :
#http://stackoverflow.com/questions/8047668/transparent-equivalent-of-given-color

makeTransparent<-function(someColor, alpha=100)
{
  newColor<-col2rgb(someColor)
  apply(newColor, 2, function(curcoldata){rgb(red=curcoldata[1], green=curcoldata[2],
    blue=curcoldata[3],alpha=alpha, maxColorValue=255)})
}










#Examples :
par(mar=c(3,3,3,3), mfrow=c(3,1))

mu1 <- 0
mu2 <- 2.3
sig <- 1

for (n in c(10,100,1000))
{
  S1 <- rnorm(n, mu1, sig)
  S2 <- rnorm(n, mu2, sig)
  
  hist(S1,
       main=paste("Histograms of S1 and S2, n=",n ,collapse=' '),
       col=c("hotpink2"),
       xlab="x", ylab="Density", xlim=c(-4,6), freq = FALSE)
  hist(S2, col=makeTransparent("mediumorchid4"), add=TRUE, freq= FALSE)
}