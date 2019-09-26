ndvi
================
Glenda Yenni

Patterns in precipitation, temperature, and ndvi

The time series
---------------

Monthly, because the ndvi we have is monthly ![](ndvi_files/figure-markdown_github/time%20series-1.png)

NDVI and Temperature
--------------------

![](ndvi_files/figure-markdown_github/ndvi%20vs%20temp-1.png)![](ndvi_files/figure-markdown_github/ndvi%20vs%20temp-2.png)![](ndvi_files/figure-markdown_github/ndvi%20vs%20temp-3.png)![](ndvi_files/figure-markdown_github/ndvi%20vs%20temp-4.png)![](ndvi_files/figure-markdown_github/ndvi%20vs%20temp-5.png)

NDVI and Precipitation
----------------------

![](ndvi_files/figure-markdown_github/ndvi%20vs%20precip-1.png)![](ndvi_files/figure-markdown_github/ndvi%20vs%20precip-2.png)![](ndvi_files/figure-markdown_github/ndvi%20vs%20precip-3.png)![](ndvi_files/figure-markdown_github/ndvi%20vs%20precip-4.png)![](ndvi_files/figure-markdown_github/ndvi%20vs%20precip-5.png)

NDVI, Mean Temperature, and Precipitation
-----------------------------------------

    ## 
    ## Call:
    ## glm(formula = ndvi ~ lag(meantemp, lag) * lag(precipitation, 
    ##     lag), data = ndvi_data)
    ## 
    ## Deviance Residuals: 
    ##       Min         1Q     Median         3Q        Max  
    ## -0.150386  -0.037340  -0.004475   0.030877   0.163044  
    ## 
    ## Coefficients:
    ##                                              Estimate Std. Error t value
    ## (Intercept)                                 2.349e-01  1.091e-02  21.530
    ## lag(meantemp, lag)                          2.982e-03  5.871e-04   5.079
    ## lag(precipitation, lag)                    -1.795e-04  3.836e-04  -0.468
    ## lag(meantemp, lag):lag(precipitation, lag)  1.309e-05  1.840e-05   0.711
    ##                                            Pr(>|t|)    
    ## (Intercept)                                 < 2e-16 ***
    ## lag(meantemp, lag)                         6.97e-07 ***
    ## lag(precipitation, lag)                       0.640    
    ## lag(meantemp, lag):lag(precipitation, lag)    0.478    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 0.002697675)
    ## 
    ##     Null deviance: 0.92409  on 281  degrees of freedom
    ## Residual deviance: 0.74995  on 278  degrees of freedom
    ##   (108 observations deleted due to missingness)
    ## AIC: -861.88
    ## 
    ## Number of Fisher Scoring iterations: 2

![](ndvi_files/figure-markdown_github/ndvi%20vs%20temp%20and%20precip-1.png)

    ## 
    ## Call:
    ## glm(formula = ndvi ~ lag(meantemp, lag) * lag(precipitation, 
    ##     lag), data = ndvi_data)
    ## 
    ## Deviance Residuals: 
    ##       Min         1Q     Median         3Q        Max  
    ## -0.148574  -0.033610  -0.004288   0.030228   0.164492  
    ## 
    ## Coefficients:
    ##                                              Estimate Std. Error t value
    ## (Intercept)                                 2.442e-01  1.020e-02  23.927
    ## lag(meantemp, lag)                          1.801e-03  5.485e-04   3.284
    ## lag(precipitation, lag)                    -2.937e-04  3.574e-04  -0.822
    ## lag(meantemp, lag):lag(precipitation, lag)  4.885e-05  1.715e-05   2.849
    ##                                            Pr(>|t|)    
    ## (Intercept)                                 < 2e-16 ***
    ## lag(meantemp, lag)                          0.00116 ** 
    ## lag(precipitation, lag)                     0.41205    
    ## lag(meantemp, lag):lag(precipitation, lag)  0.00472 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 0.002341101)
    ## 
    ##     Null deviance: 0.90694  on 280  degrees of freedom
    ## Residual deviance: 0.64849  on 277  degrees of freedom
    ##   (109 observations deleted due to missingness)
    ## AIC: -898.64
    ## 
    ## Number of Fisher Scoring iterations: 2

![](ndvi_files/figure-markdown_github/ndvi%20vs%20temp%20and%20precip-2.png)

    ## 
    ## Call:
    ## glm(formula = ndvi ~ lag(meantemp, lag) * lag(precipitation, 
    ##     lag), data = ndvi_data)
    ## 
    ## Deviance Residuals: 
    ##       Min         1Q     Median         3Q        Max  
    ## -0.151992  -0.041306  -0.006124   0.039497   0.134814  
    ## 
    ## Coefficients:
    ##                                              Estimate Std. Error t value
    ## (Intercept)                                 2.444e-01  1.155e-02  21.163
    ## lag(meantemp, lag)                          2.007e-03  6.203e-04   3.236
    ## lag(precipitation, lag)                     1.477e-03  4.042e-04   3.655
    ## lag(meantemp, lag):lag(precipitation, lag) -5.534e-05  1.939e-05  -2.855
    ##                                            Pr(>|t|)    
    ## (Intercept)                                 < 2e-16 ***
    ## lag(meantemp, lag)                         0.001361 ** 
    ## lag(precipitation, lag)                    0.000308 ***
    ## lag(meantemp, lag):lag(precipitation, lag) 0.004637 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 0.002991784)
    ## 
    ##     Null deviance: 0.88755  on 278  degrees of freedom
    ## Residual deviance: 0.82274  on 275  degrees of freedom
    ##   (111 observations deleted due to missingness)
    ## AIC: -823.78
    ## 
    ## Number of Fisher Scoring iterations: 2

![](ndvi_files/figure-markdown_github/ndvi%20vs%20temp%20and%20precip-3.png)

    ## 
    ## Call:
    ## glm(formula = ndvi ~ lag(meantemp, lag) * lag(precipitation, 
    ##     lag), data = ndvi_data)
    ## 
    ## Deviance Residuals: 
    ##       Min         1Q     Median         3Q        Max  
    ## -0.144878  -0.034998  -0.004392   0.031081   0.168027  
    ## 
    ## Coefficients:
    ##                                              Estimate Std. Error t value
    ## (Intercept)                                 3.287e-01  1.085e-02  30.292
    ## lag(meantemp, lag)                         -2.156e-03  5.828e-04  -3.699
    ## lag(precipitation, lag)                     4.709e-04  3.801e-04   1.239
    ## lag(meantemp, lag):lag(precipitation, lag) -3.440e-05  1.829e-05  -1.881
    ##                                            Pr(>|t|)    
    ## (Intercept)                                 < 2e-16 ***
    ## lag(meantemp, lag)                         0.000262 ***
    ## lag(precipitation, lag)                    0.216454    
    ## lag(meantemp, lag):lag(precipitation, lag) 0.061095 .  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 0.002640906)
    ## 
    ##     Null deviance: 0.87390  on 275  degrees of freedom
    ## Residual deviance: 0.71833  on 272  degrees of freedom
    ##   (114 observations deleted due to missingness)
    ## AIC: -849.29
    ## 
    ## Number of Fisher Scoring iterations: 2

![](ndvi_files/figure-markdown_github/ndvi%20vs%20temp%20and%20precip-4.png)

    ## 
    ## Call:
    ## glm(formula = ndvi ~ lag(meantemp, lag) * lag(precipitation, 
    ##     lag), data = ndvi_data)
    ## 
    ## Deviance Residuals: 
    ##       Min         1Q     Median         3Q        Max  
    ## -0.120086  -0.034336  -0.004767   0.028591   0.161997  
    ## 
    ## Coefficients:
    ##                                              Estimate Std. Error t value
    ## (Intercept)                                 2.125e-01  1.043e-02  20.368
    ## lag(meantemp, lag)                          4.281e-03  5.611e-04   7.630
    ## lag(precipitation, lag)                     5.105e-04  3.604e-04   1.417
    ## lag(meantemp, lag):lag(precipitation, lag) -2.377e-05  1.737e-05  -1.369
    ##                                            Pr(>|t|)    
    ## (Intercept)                                 < 2e-16 ***
    ## lag(meantemp, lag)                         4.21e-13 ***
    ## lag(precipitation, lag)                       0.158    
    ## lag(meantemp, lag):lag(precipitation, lag)    0.172    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 0.002350525)
    ## 
    ##     Null deviance: 0.84153  on 269  degrees of freedom
    ## Residual deviance: 0.62524  on 266  degrees of freedom
    ##   (120 observations deleted due to missingness)
    ## AIC: -862.14
    ## 
    ## Number of Fisher Scoring iterations: 2

![](ndvi_files/figure-markdown_github/ndvi%20vs%20temp%20and%20precip-5.png)

Forecast NDVI and Temperature
-----------------------------

Currently we only have NDVI through 2013. Below are comparisons between the NDVI prediction via autocorrelation (w/ seasonality) and the predictions from the best model above (`ndvi~lag(meantemp,3)*lag(precipitation,3)`) (darkgreen) ![](ndvi_files/figure-markdown_github/forcast%20ndvi%20vs%20temp%20and%20precip-1.png)![](ndvi_files/figure-markdown_github/forcast%20ndvi%20vs%20temp%20and%20precip-2.png)
