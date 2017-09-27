>Sex <- Abalone_Data$Sex
>summary(Sex)
   Length     Class      Mode 
     4179 character character 
>
>
> Length <- Abalone_Data$Length
> summary(Length)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  0.075   0.450   0.545   0.524   0.615   0.815       2 
>
>
> Diameter <- Abalone_Data$Diameter
> summary(Diameter)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0550  0.3500  0.4250  0.4079  0.4800  0.6500       2  
>
> 
> Height <- Abalone_Data$Height
> summary(Height)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0000  0.1150  0.1400  0.1395  0.1650  1.1300       2 
>
>
> H.W. <- Abalone_Data$H.W.
> summary(H.W.)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0020  0.4415  0.7995  0.8287  1.1530  2.8260       2 
>
>
> S.W. <- Abalone_Data$S.W.
> summary(S.W.)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0010  0.1860  0.3360  0.3594  0.5020  1.4880       2 
>
>
> V.W. <- Abalone_Data$V.W.
> summary(V.W.)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0005  0.0935  0.1710  0.1806  0.2530  0.7600       2 
>
>
> Shell_W. <- Abalone_Data$`Shell W.`
> summary(Shell_W.)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0015  0.1300  0.2340  0.2388  0.3290  1.0050       2 
>
>
> Ring_Total <- Abalone_Data$`Rings/Integer`
> summary(Ring_Total)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  1.000   8.000   9.000   9.934  11.000  29.000       2 
>
>#Conduct Multiple Regression Models 
>#For Different Variables 
>
> Set_One <- c("Length", "Diameter", "H.W.")
> Abalone_Data1 <- Abalone_Data[Set_One]

 [ reached getOption("max.print") -- omitted 3846 rows ]
> plot(Abalone_Data1)
>
>
> Set_Two <- c("Length", "Diameter", "S.W.")
> Abalone_Data2 <- Abalone_Data[Set_Two]
> plot(Abalone_Data2)
>
>
> Set_Three <- c("Length", "Diameter", "V.W.")
> Abalone_Data3 <- Abalone_Data[Set_Three]
> plot(Abalone_Data3)
>
>
> Set_Four <- c("Length", "Diameter", "Rings/Integer")
> Abalone_Data4 <- Abalone_Data[Set_Four]
> plot(Abalone_Data4)
>
