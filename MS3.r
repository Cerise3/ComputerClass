somePDFPath = "/home/meteo/sdg152/Meteo_473/MS3/MS3_Hist.pdf" 			#opens a path to the PDF 
pdf(file=somePDFPath) 								#the PDF we save it to
sink("MS3_Hist",append=F)							#clears the PDF

x=read.table("/home/meteo/sdg152/Meteo_473/MS3/nws3.txt", header=T)		#puts the textfile in x
attach(x)
hist(ExpectedProfit, freq = F, main = "Histogram of Expected Profit", col = "grey")#histogram area = 1
lines(density(ExpectedProfit), col = "red")					#plots smooth histogram
dev.off()									#close the file

#could also do a bar graph by date

somePDFPath = "/home/meteo/sdg152/Meteo_473/MS3/MS3_Bar.pdf" 			#opens a path to the PDF 
pdf(file=somePDFPath)								#the PDF we save it to
sink("MS3_Bar",append=F)							#clears the PDF

l=read.table("/home/meteo/sdg152/Meteo_473/MS3/nws4.txt", header=T)			#puts the textfile in l
attach(l)									#so I can use the headers in the file
m=rbind(ExpectedProfit)									#creates a data matrix
barplot(m, names.arg=Date, main="Expected Profit by Date", col=c("blue"),las=2)	#sets the barplot 
#barplot(m, names.arg=dates, ylim(0,100), col=c("blue", "red"), las=2)
dev.off()									#closes the pdf

somePDFPath = "/home/meteo/sdg152/Meteo_473/MS3/MS3_Plot.pdf" 			#opens a path to the PDF 
pdf(file=somePDFPath)								#the PDF we save it to
sink("MS3_Plot",append=F)							#clears the PDF
x=read.table("/home/meteo/sdg152/Meteo_473/MS3/nws3.txt", header=T)		#puts the textfile in x
attach(x)
plot(Date,ExpectedProfit,pch=20,bg=c("red","blue")[unclass(Date)]) 		#plots the Expected Profit by Date
dev.off()

