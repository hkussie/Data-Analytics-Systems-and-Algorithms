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
> sex <- Abalone_Data$Sex
> summary(sex)
   Length     Class      Mode 
     4179 character character 
>
> Diameter <- Abalone_Data$Diameter
> summary(Diameter)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0550  0.3500  0.4250  0.4079  0.4800  0.6500       2 
>
> Height <- Abalone_Data$Height
> summary(Height)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0000  0.1150  0.1400  0.1395  0.1650  1.1300       2 
>
> H.W. <- Abalone_Data$H.W.
> summary(H.W.)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0020  0.4415  0.7995  0.8287  1.1530  2.8260       2 
>
> S.W. <- Abalone_Data$S.W.
> summary(S.W.)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0010  0.1860  0.3360  0.3594  0.5020  1.4880       2 
>
> V.W. <- Abalone_Data$V.W.
> summary(V.W.)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0005  0.0935  0.1710  0.1806  0.2530  0.7600       2 
>
> Shell_Weight <- Abalone_Data$`Shell W.`
> summary(Shell_Weight)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0015  0.1300  0.2340  0.2388  0.3290  1.0050       2 
>
> Ring_Total <- Abalone_Data$`Rings/Integer`
> summary(Ring_Total)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  1.000   8.000   9.000   9.934  11.000  29.000       2 
>
> #Use the Linear Model function to conduct simple regression 
> #Analysis between different data points. 
>
> mod <- lm(Length ~ Height)
> summary(mod)

Call:
lm(formula = Length ~ Height)

Residuals:
     Min       1Q   Median       3Q      Max 
-2.42243 -0.03698  0.00242  0.03854  0.40687 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 0.192494   0.003633   52.98   <2e-16 ***
Height      2.376053   0.024946   95.25   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.06743 on 4175 degrees of freedom
  (2 observations deleted due to missingness)
Multiple R-squared:  0.6848,  Adjusted R-squared:  0.6848 
F-statistic:  9072 on 1 and 4175 DF,  p-value: < 2.2e-16
>
> plot(mod)
>
> mod1 <- lm(Length ~ H.W.)
> summary(mod1)

Call:
lm(formula = Length ~ H.W.)

Residuals:
      Min        1Q    Median        3Q       Max 
-0.261660 -0.018210  0.009044  0.029514  0.114830 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 0.336207   0.001384   242.9   <2e-16 ***
H.W.        0.226590   0.001438   157.6   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.04556 on 4175 degrees of freedom
  (2 observations deleted due to missingness)
Multiple R-squared:  0.8561,  Adjusted R-squared:  0.8561 
F-statistic: 2.484e+04 on 1 and 4175 DF,  p-value: < 2.2e-16
>
> plot(mod1)
>
> mod2 <- lm(Length ~ S.W.)
> summary(mod2)

Call:
lm(formula = Length ~ S.W.)

Residuals:
      Min        1Q    Median        3Q       Max 
-0.314884 -0.023757  0.009467  0.035355  0.126532 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 0.349406   0.001557   224.4   <2e-16 ***
S.W.        0.485816   0.003686   131.8   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.05287 on 4175 degrees of freedom
  (2 observations deleted due to missingness)
Multiple R-squared:  0.8062,  Adjusted R-squared:  0.8062 
F-statistic: 1.737e+04 on 1 and 4175 DF,  p-value: < 2.2e-16
>
> plot(mod2)
>
> mod3 <- lm(Length ~ V.W.)
> summary(mod3)

Call:
lm(formula = Length ~ V.W.)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.32222 -0.02528  0.00787  0.03367  0.19027 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 0.345323   0.001539   224.4   <2e-16 ***
V.W.        0.989342   0.007284   135.8   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.0516 on 4175 degrees of freedom
  (2 observations deleted due to missingness)
Multiple R-squared:  0.8154,  Adjusted R-squared:  0.8154 
F-statistic: 1.845e+04 on 1 and 4175 DF,  p-value: < 2.2e-16
>
> plot(mod3)
>
> mod4 <- lm(Length ~ Shell_Weight)
> summary(mod4)

Call:
lm(formula = Length ~ Shell_Weight)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.39237 -0.02294  0.00853  0.03476  0.20995 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.339025   0.001626   208.5   <2e-16 ***
Shell_Weight 0.774468   0.005883   131.7   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.05292 on 4175 degrees of freedom
  (2 observations deleted due to missingness)
Multiple R-squared:  0.8059,  Adjusted R-squared:  0.8058 
F-statistic: 1.733e+04 on 1 and 4175 DF,  p-value: < 2.2e-16
>
> plot(mod4)
>
>
> mod5 <- lm(Length ~ Ring_Total)
> summary(mod5)

Call:
lm(formula = Length ~ Ring_Total)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.34494 -0.07168  0.00758  0.07611  0.25684 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 0.3180020  0.0050012   63.59   <2e-16 ***
Ring_Total  0.0207365  0.0004789   43.30   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.09977 on 4175 degrees of freedom
  (2 observations deleted due to missingness)
Multiple R-squared:  0.3099,  Adjusted R-squared:  0.3098 
F-statistic:  1875 on 1 and 4175 DF,  p-value: < 2.2e-16
>
> plot(mod5)
>

