library(dplyr)
library(ggplot2)
library(stats)

#' Plot temperature data vs ndvi
#'
#' @param ndvi_data dataframe of ndvi and temp data
#' @param lag number of timesteps to lag the temp data
#' @param method smoothing method to use (from ggplot2::stat_smooth)
#' 
#' @example plot_temp_ndvi(ndvi_data, 1, "lm")
#' 
#'
#'

plot_temp_ndvi = function(ndvi_data, lag = 1, method = "lm") {
  
theme_set(theme_minimal())
ggplot(data = ndvi_data) + 
    geom_point(aes(x = lag(maxtemp, lag), y = ndvi, color = "maxtemp")) +
    geom_smooth(aes(x=lag(maxtemp,lag), y=ndvi, color = "maxtemp"), method = method, se = TRUE) +
    geom_point(aes(x = lag(mintemp,lag), y = ndvi, color = "mintemp")) +
    geom_smooth(aes(x=lag(mintemp,lag), y=ndvi, color = "mintemp"), method = method, se = TRUE) +
    geom_point(aes(x = lag(meantemp,lag), y = ndvi, color = "meantemp")) +
    geom_smooth(aes(x=lag(meantemp,lag), y=ndvi, color="meantemp"), method = method, se = TRUE) +
    scale_color_manual(values = c("red","pink","blue")) +
    labs(x = paste("Air Temp (C), lag =",lag)) +
    theme(legend.position="none")

}

#' Plot precipitation data vs ndvi
#' 
#' @param ndvi_data dataframe of ndvi and temp data
#' @param lag number of timesteps to lag the precipitation data
#' @param method smoothing method to use (from ggplot2::stat_smooth)
#' 
#' @example plot_precip_ndvi(ndvi_data, 1, "lm")
#' 
#'
#'

plot_precip_ndvi = function(ndvi_data, lag = 1, method = "lm") {
  
  theme_set(theme_minimal())
  ggplot(data = ndvi_data) + 
    geom_point(aes(x = lag(precipitation, lag), y = ndvi), color = "lightblue") +
    geom_smooth(aes(x=lag(precipitation,lag), y=ndvi), color = "lightblue", method = method, se = TRUE) +
    labs(x = paste("Pricipitation (mm), lag =",lag)) +
    theme(legend.position="none")
  
}

#' Plot relationship between temp, precipitation and ndvi
#' 
#' @param ndvi_data dataframe of ndvi and temp data
#' @param lag number of timesteps to lag the precipitation data
#' 
#' @example plot_glm_ndvi(ndvi_data, 1, "lm")
#' 
#'
#'

plot_glm_ndvi = function(ndvi_data, lag = 1) {
  
  fit=glm(ndvi~lag(meantemp,lag)*lag(precipitation,lag),data=ndvi_data)
  print(summary(fit))
  
  theme_set(theme_minimal())
  ggplot(ndvi_data, aes(x = lag(meantemp, lag), y = ndvi, 
                       size = lag(precipitation, lag), color = lag(precipitation, lag))) +
    geom_point() +
    labs(x = paste("Mean Temp (C), lag =",lag))
  
}

#' Plot relationship between temp, precipitation and ndvi
#' 
#' @param rodent_data dataframe of ndvi and temp data
#' @param lag number of timesteps to lag the precipitation data
#' 
#' @example plot_glm_rodents(rodent_data, 1, "lm")
#' 
#'
#'

plot_glm_rodents = function(rodent_data, lag = 1) {
  
  fit=glm(DM~lag(meantemp,lag)*lag(precipitation,lag),data=ndvi_data)
  print(summary(fit))
  
  theme_set(theme_minimal())
  ggplot(rodent_data, aes(x = lag(meantemp, lag), y = ndvi, 
                        size = lag(precipitation, lag), color = lag(precipitation, lag))) +
    geom_point() +
    labs(x = paste("Mean Temp (C), lag =",lag))
  
}
