#volumeEstimato.R

#Importing dplyr 

library(dplyr)

measurement_data<- read.csv("measurements.csv")

#Producing Volume equation and adding column to measurement data

measurement_data<- measurement_data %>% 
  mutate(Volume= pi * (Limb_width/2)^2 * Limb_length) #Applied Volume in the form of a cylinder closest approximation to organisms limb; such that: pi*(r)^2*h 

write.csv(measurement_data, "measurement.csv")

