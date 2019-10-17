
temp <- as.matrix(read.table("/home/meteo/sdg152/Meteo_473/prob.txt", row.names=1,header=T))

somePDFPath = "/home/meteo/sdg152/Meteo_473/ecdfplots.pdf" #where to put the file
pdf(file=somePDFPath) #the PDF we save it to
sink("ecdfplots",append=F) #append=false overwrites the pdf, so there is nothing old in there
apply(temp, 1, function(temp) plot(temp,type="o",col="blue",main="Temp Vs Prob",ylab='Temperature', xlab='Probability')) #graphing the matrix by row to the pdf
dev.off() #closes the pdf

matrix.axes <- function(data) {   

# Do the rows, las=2 for text perpendicular to the axis
x <- (1:dim(data)[1] - 1) / (dim(data)[1] - 1);
 axis(side=1, at=x, labels=rownames(data), las=2);

 # Do the columns

 x <- (1:dim(data)[2] - 1) / (dim(data)[2] - 1);
 axis(side=2, at=x, labels=colnames(data), las=2);

 # Add a solid black grid
 grid(nx=(dim(data)[1]-1), ny=(dim(data)[2]-1), col="black", lty="solid");
 }
 filled.contour(temp, plot.axes=matrix.axes(temp), col=c(5,4,3,7,"orange",2),
nlevels=7, main="Temperature vs Probability")


