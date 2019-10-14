#x=read.table("C:\Documents and Settings\User\My Documents\sreecesdocs\Meteorology\text.txt",header=F)#needed at home just R
x=read.table("/home/meteo/sdg152/Meteo_473/prob.txt", header=F)#for school from Linux
#x is the whole textfile as a data frame

install.packages("gplots")#install the package to plot the contour
y #yes I want to install
75 #use this cran mirror USA(1)

s=x[x[ ,"V3"] == "K11R",] #s is a dataframe, a subset of x, only one station
#R gives default column names, V3 corresponds to station, and you can change the station model name to which ever one you want

#p<-s[c("V4","V5","V6","V7","V8","V9","V10","V11","V12","V13","V14")] #p is a dataframe, a subset of s, only the probability; school?
p=s[c("V4","V5","V6","V7","V8","V9","V10","V11","V12","V13","V14")] #p is a dataframe, a subset of s, only the probability; home

#m<-matrix(1:825, nrow=75, byrow=T) #m is the matrix of p, the probability; school?
#m=matrix(1:825, nrow=75, byrow=T) #m is the matrix of p, the probability; home
m=data.matrix(p, rownames.force = NA) #where p is a dataframe

somePDFPath = "C:\\temp\\ecdfplots.pdf" #where to put the file
pdf(file=somePDFPath) #the PDF we save it to
apply(m, 1, function(m) plot(ecdf(m))) #graphing the matrix by row to a pdf
dev.off() #closes the pdf

somePDFPath = "C:\\temp\\contourplot.pdf"
pdf(file=somePDFPath) #the PDF we save it to
library(gplots)
filled.contour(m, main="Contour plot")
dev.off()

#somePDFPath = "C:\\temp\\some.pdf"
#pdf(file=somePDFPath) #the PDF we save it to
#dev.off() #closing the PDF
q()#quit
n#no i don't want to save
#need a return

