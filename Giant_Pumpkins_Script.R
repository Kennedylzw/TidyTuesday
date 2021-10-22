## First Tidy Tuesday Attempt!
## October 22, 2021
## Giant Pumpkins Dataset
## Created by KZ

#Getting libraries
library(ggplot2)
install.packages("eeptools")
library(eeptools)

# Getting the data
install.packages("tidytuesdayR")
tuesdata <- tidytuesdayR::tt_load(2021, week = 43)
pumpkins <- tuesdata$pumpkins

# Taking commas out of weight variable
pumpkins$weight_lbs <- decomma(pumpkins$weight_lbs)

# Turning weight to numeric from character
pumpkins$weight_lbs <- as.numeric(pumpkins$weight_lbs)

is.numeric(pumpkins$weight_lbs) #... yay!
