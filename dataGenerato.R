
#dataGenerato.R: Hypothetical Data

#For reproducibility

set.seed(343434)

#Creating vector for 100 species, randomly selected from a vector of 5 species. Note: replace= T, to reinforce the values chosen.

Species_names<- sample(c("Chimpanzee","Vaquita","Bear","Tiger","Lion"),100, replace= T)


#Creating vector for Limb Width with no negative values (setting parameter: Limb_width > 0), as a rnorm, gaussian distribution. Note, Limb width < Limb length 


Limb_width<- rnorm(100, mean= 35, sd= 5) #normal distribution
Limb_width[Limb_width < 0]<- 0   #Ensuring no negative values, such that, every value that is smaller than 0 goes to 0 (no value)


#Creating vector of 100 values for limb_length (once again no negative values). I will be using a normal distribution once again (faciliatating data analysis) 


Limb_length<- rnorm(100, mean= 50,sd= 8) #Greater standard deviation in limb length


#Creating vector of 100 values for observes, randomly selected from a vector of 3 names. Note: replace= T, to reinforce the values chosen.


Observer_names<- sample(c("Juan","James","Bob"), 100, replace= T)


#Combining into a data.frame 


measurement_Data<- data.frame(Species_names, Limb_width, Limb_length, Observer_names)


#Exporting it to a CSV file using: write.csv


write.csv(measurement_Data, "measurements.csv", row.names= T)

