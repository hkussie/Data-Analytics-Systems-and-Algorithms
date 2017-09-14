> library(readr)
> Abalone_Data <- read_csv("/Users/harrisonk1/Desktop/Abalone-Data.csv")
>
>#Get General Summary of the Data
>
>#Get Summary of the Data Set as a Whole to Examine
>#Any Potential Problems With the Set 
>
> summary(Abalone_Data)
     Sex                Length         Diameter          Height      
 Length:4179        Min.   :0.075   Min.   :0.0550   Min.   :0.0000  
 Class :character   1st Qu.:0.450   1st Qu.:0.3500   1st Qu.:0.1150  
 Mode  :character   Median :0.545   Median :0.4250   Median :0.1400  
                    Mean   :0.524   Mean   :0.4079   Mean   :0.1395  
                    3rd Qu.:0.615   3rd Qu.:0.4800   3rd Qu.:0.1650  
                    Max.   :0.815   Max.   :0.6500   Max.   :1.1300  
                    NA's   :2       NA's   :2        NA's   :2       
      H.W.             S.W.             V.W.           Shell W.     
 Min.   :0.0020   Min.   :0.0010   Min.   :0.0005   Min.   :0.0015  
 1st Qu.:0.4415   1st Qu.:0.1860   1st Qu.:0.0935   1st Qu.:0.1300  
 Median :0.7995   Median :0.3360   Median :0.1710   Median :0.2340  
 Mean   :0.8287   Mean   :0.3594   Mean   :0.1806   Mean   :0.2388  
 3rd Qu.:1.1530   3rd Qu.:0.5020   3rd Qu.:0.2530   3rd Qu.:0.3290  
 Max.   :2.8255   Max.   :1.4880   Max.   :0.7600   Max.   :1.0050  
 NA's   :2        NA's   :2        NA's   :2        NA's   :2       
 Rings/Integer   
 Min.   : 1.000  
 1st Qu.: 8.000  
 Median : 9.000  
 Mean   : 9.934  
 3rd Qu.:11.000  
 Max.   :29.000  
 NA's   :2       
>
>#Get Summary of the Length Data in the Data Set
> summary(Abalone_Data$Length)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  0.075   0.450   0.545   0.524   0.615   0.815       2 
>
>#Get Summary of the Diameter Data in the Data Set
> summary(Abalone_Data$Diameter)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0550  0.3500  0.4250  0.4079  0.4800  0.6500       2 
>
>#Get Summary of the Height Data in the Data Set 
> summary(Abalone_Data$Height)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0000  0.1150  0.1400  0.1395  0.1650  1.1300       2 
>
>#Get Summary of the Whole Weight Data in the Data Set 
>summary(Abalone_Data$H.W.)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0020  0.4415  0.7995  0.8287  1.1530  2.8260       2 
> 
>#Get Summary of the Shuckced Weight Data in the Data Set
> summary(Abalone_Data$S.W.)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0010  0.1860  0.3360  0.3594  0.5020  1.4880       2 
>
>#Get Summary of the Viscera Weight Data in the Data Set 
> summary(Abalone_Data$V.W.)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0005  0.0935  0.1710  0.1806  0.2530  0.7600       2 
>
>#Get Summary of the Shell Weight Data in the Data Set 
> summary(Abalone_Data$`Shell W.`)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0015  0.1300  0.2340  0.2388  0.3290  1.0050       2 
>
>#Get Summary of the Rings/Integer Data in the Data Set
> summary(Abalone_Data$`Rings/Integer`)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  1.000   8.000   9.000   9.934  11.000  29.000       2 
>
>#Examine Relationships Between the Different Variables 
>#(Using Correlation Test Function)
> cor.test(Abalone_Data$Length, Abalone_Data$Height)

	Pearson's product-moment correlation

data:  Abalone_Data$Length and Abalone_Data$Height
t = 95.249, df = 4175, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.8177496 0.8368775
sample estimates:
      cor 
0.8275536 
> cor.test(Abalone_Data$Length, Abalone_Data$S.W.)

	Pearson's product-moment correlation

data:  Abalone_Data$Length and Abalone_Data$S.W.
t = 131.81, df = 4175, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.8918732 0.9036339
sample estimates:
      cor 
0.8979137
> cor.test(Abalone_Data$Length, Abalone_Data$V.W.)

	Pearson's product-moment correlation

data:  Abalone_Data$Length and Abalone_Data$V.W.
t = 135.82, df = 4175, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.8972629 0.9084657
sample estimates:
      cor 
0.9030177 
> cor.test(Abalone_Data$Length, Abalone_Data$`Shell W.`)

	Pearson's product-moment correlation

data:  Abalone_Data$Length and Abalone_Data$`Shell W.`
t = 131.65, df = 4175, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.8916535 0.9034369
sample estimates:
      cor 
0.8977056 
> cor.test(Abalone_Data$Length, Abalone_Data$`Rings/Integer`)

	Pearson's product-moment correlation

data:  Abalone_Data$Length and Abalone_Data$`Rings/Integer`
t = 43.303, df = 4175, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.5354322 0.5773001
sample estimates:
      cor 
0.5567196 
> cor.test(Abalone_Data$Height, Abalone_Data$H.W.)

	Pearson's product-moment correlation

data:  Abalone_Data$Height and Abalone_Data$H.W.
t = 92.302, df = 4175, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.8089926 0.8289530
sample estimates:
      cor 
0.8192208 
> cor.test(Abalone_Data$Height, Abalone_Data$S.W.)

	Pearson's product-moment correlation

data:  Abalone_Data$Height and Abalone_Data$S.W.
t = 79.232, df = 4175, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.7625673 0.7868075
sample estimates:
      cor 
0.7749723 
> cor.test(Abalone_Data$Height, Abalone_Data$V.W.)

	Pearson's product-moment correlation

data:  Abalone_Data$Height and Abalone_Data$V.W.
t = 85.652, df = 4175, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.7870470 0.8090587
sample estimates:
      cor 
0.7983193 
> cor.test(Abalone_Data$Height, Abalone_Data$`Shell W.`)

	Pearson's product-moment correlation

data:  Abalone_Data$Height and Abalone_Data$`Shell W.`
t = 91.662, df = 4175, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.8070146 0.8271620
sample estimates:
     cor 
0.817338 
> cor.test(Abalone_Data$Height, Abalone_Data$`Rings/Integer`)

	Pearson's product-moment correlation

data:  Abalone_Data$Height and Abalone_Data$`Rings/Integer`
t = 43.388, df = 4175, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.5362051 0.5780225
sample estimates:
      cor 
0.5574673 
>
>#Get Plots of the Length Correlation Data 
> plot(Abalone_Data$Length, Abalone_Data$Height, main="Height and Length in Abalone Data Set", 
> xlab = "Length", ylab = "Height") 
> plot(Abalone_Data$Length, Abalone_Data$H.W., main="Height and Whole Weight in Abalone Data Set", 
> xlab = "Length", ylab = "Whole Weight")
> plot(Abalone_Data$Length, Abalone_Data$S.W., main="Length and Shucked Weight", 
> xlab="Length", ylab = "Shucked Weight")
> plot(Abalone_Data$Length, Abalone_Data$V.W., main = "Length and Viscera Weight", 
> xlab = "Length", ylab = "Viscera Weight")
> plot(Abalone_Data$Length, Abalone_Data$`Shell W.`, main = "Length and Shell Weight", 
> xlab = "Length", ylab="Shell Weight")
> plot(Abalone_Data$Length, Abalone_Data$`Rings/Integer`, main = "Length and Number of Rings", 
> xlab="Length", ylab = "Ring Total")
>
>#Get Plots of the Height Correlation Data 
> plot(Abalone_Data$Height, Abalone_Data$H.W., main = "Height and Whole Weight", 
> xlab="Height", ylab = "Whole Weight")
> plot(Abalone_Data$Height, Abalone_Data$S.W., main = "Height and Shucked Weight", 
> xlab = "Height", ylab = "Shucked Weight")
> plot(Abalone_Data$Height, Abalone_Data$V.W., main = "Height and Viscera Weight", 
> xlab = "Height", ylab = "Viscera Weight")
> plot(Abalone_Data$Height, Abalone_Data$`Shell W.`, main = "Height and Shell Weight", 
> xlab = "Height", ylab = "Shell Weight")
> plot(Abalone_Data$Height, Abalone_Data$`Rings/Integer`, main = "Height and Ring Total", 
> xlab = "Height", ylab = "Ring Total")
> 
>
>