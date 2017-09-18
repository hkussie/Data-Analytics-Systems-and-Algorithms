> library(readr)
> Abalone_Data <- read_csv("/Users/harrisonk1/Desktop/CPTS215/Core Data/Abalone-Data.csv")
Parsed with column specification:
cols(
  Sex = col_character(),
  Length = col_double(),
  Diameter = col_double(),
  Height = col_double(),
  H.W. = col_double(),
  S.W. = col_double(),
  V.W. = col_double(),
  `Shell W.` = col_double(),
  `Rings/Integer` = col_integer()
)
> View(Abalone_Data)
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
 >#Perform Welch Two Sample T-Tests For Different Variables 
 >#In the data set. Length:
 >
 >t.test(Abalone_Data$Length, Abalone_Data$Height)

  Welch Two Sample t-test

data:  Abalone_Data$Length and Abalone_Data$Height
t = 195.4, df = 5174.4, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 0.3806183 0.3883331
sample estimates:
mean of x mean of y 
0.5239921 0.1395164 
>
> t.test(Abalone_Data$Length, Abalone_Data$Height)

  Welch Two Sample t-test

data:  Abalone_Data$Length and Abalone_Data$Height
t = 195.4, df = 5174.4, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 0.3806183 0.3883331
sample estimates:
mean of x mean of y 
0.5239921 0.1395164 
>
> t.test(Abalone_Data$Length, Abalone_Data$H.W.)

  Welch Two Sample t-test

data:  Abalone_Data$Length and Abalone_Data$H.W.
t = -39.011, df = 4675.1, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.3200650 -0.2894351
sample estimates:
mean of x mean of y 
0.5239921 0.8287422 
>
> t.test(Abalone_Data$Length, Abalone_Data$S.W.)

  Welch Two Sample t-test

data:  Abalone_Data$Length and Abalone_Data$S.W.
t = 42.159, df = 6427.9, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 0.1569698 0.1722794
sample estimates:
mean of x mean of y 
0.5239921 0.3593675 
>
> t.test(Abalone_Data$Length, Abalone_Data$V.W.)

  Welch Two Sample t-test

data:  Abalone_Data$Length and Abalone_Data$V.W.
t = 136.5, df = 8283.3, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 0.3384669 0.3483301
sample estimates:
mean of x mean of y 
0.5239921 0.1805936 

> t.test(Abalone_Data$Length, Abalone_Data$`Shell W.`)

  Welch Two Sample t-test

data:  Abalone_Data$Length and Abalone_Data$`Shell W.`
t = 100.25, df = 8176.3, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 0.2795851 0.2907374
sample estimates:
mean of x mean of y 
0.5239921 0.2388309
>
> t.test(Abalone_Data$Length, Abalone_Data$`Rings/Integer`)

  Welch Two Sample t-test

data:  Abalone_Data$Length and Abalone_Data$`Rings/Integer`
t = -188.49, df = 4187.6, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -9.507565 -9.311820
sample estimates:
mean of x mean of y 
0.5239921 9.9336845 
>
> t.test(Abalone_Data$Height, Abalone_Data$Diameter)

  Welch Two Sample t-test

data:  Abalone_Data$Height and Abalone_Data$Diameter
t = -161.05, df = 5614.3, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.2716315 -0.2650982
sample estimates:
mean of x mean of y 
0.1395164 0.4078813 
>
> t.test(Abalone_Data$Height, Abalone_Data$H.W.)

  Welch Two Sample t-test

data:  Abalone_Data$Height and Abalone_Data$H.W.
t = -90.506, df = 4236.8, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.7041556 -0.6742959
sample estimates:
mean of x mean of y 
0.1395164 0.8287422 
>
> t.test(Abalone_Data$Height, Abalone_Data$S.W.)

  Welch Two Sample t-test

data:  Abalone_Data$Height and Abalone_Data$S.W.
t = -62.908, df = 4472.2, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.2267027 -0.2129995
sample estimates:
mean of x mean of y 
0.1395164 0.3593675 
>
> t.test(Abalone_Data$Height, Abalone_Data$V.W.)

  Welch Two Sample t-test

data:  Abalone_Data$Height and Abalone_Data$V.W.
t = -22.628, df = 5366.9, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.04463597 -0.03751845
sample estimates:
mean of x mean of y 
0.1395164 0.1805936
>
> t.test(Abalone_Data$Height, Abalone_Data$`Shell W.`)

  Welch Two Sample t-test

data:  Abalone_Data$Height and Abalone_Data$`Shell W.`
t = -44.16, df = 4924, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.10372346 -0.09490546
sample estimates:
mean of x mean of y 
0.1395164 0.2388309 
>
> t.test(Abalone_Data$Height, Abalone_Data$`Rings/Integer`)

  Welch Two Sample t-test

data:  Abalone_Data$Height and Abalone_Data$`Rings/Integer`
t = -196.31, df = 4177.4, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -9.891981 -9.696355
sample estimates:
mean of x mean of y 
0.1395164 9.9336845 
>
> #Conduct T-Tests Using Whole Weight and Shucked Weight,
> #Viscera Weight, Shell Weight, and Number of Rings Who's
> #Total Values Are Multiplied By Two. 
>
> t.test(Abalone_Data$H.W., Abalone_Data$S.W. * 2)

  Welch Two Sample t-test

data:  Abalone_Data$H.W. and Abalone_Data$S.W. * 2
t = 10.748, df = 8270.6, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 0.08994427 0.13007010
sample estimates:
mean of x mean of y 
0.8287422 0.7187350 
>
> t.test(Abalone_Data$H.W., Abalone_Data$V.W. * 2)

  Welch Two Sample t-test

data:  Abalone_Data$H.W. and Abalone_Data$V.W. * 2
t = 56.255, df = 5781.1, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 0.4512615 0.4838483
sample estimates:
mean of x mean of y 
0.8287422 0.3611872 
>
> t.test(Abalone_Data$H.W., Abalone_Data$`Shell W.` * 2)

  Welch Two Sample t-test

data:  Abalone_Data$H.W. and Abalone_Data$`Shell W.` * 2
t = 40.238, df = 6614.6, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 0.3339762 0.3681846
sample estimates:
mean of x mean of y 
0.8287422 0.4776617 
>
> t.test(Abalone_Data$H.W., Abalone_Data$`Rings/Integer` * 2)

  Welch Two Sample t-test

data:  Abalone_Data$H.W. and Abalone_Data$`Rings/Integer` * 2
t = -190.27, df = 4224.3, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -19.23480 -18.84245
sample estimates:
 mean of x  mean of y 
 0.8287422 19.8673689 