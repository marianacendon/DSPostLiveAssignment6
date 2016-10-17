############################################
# Download and clean data set rollingsales_queens.xls dowloaded from Official New York City Website 
# Mariana Llamas-Cendon
# DS Post Live Assignment 6
# Updated Oct 15 2016
# Data downloaded from: http://www1.nyc.gov/home/search/index.page?search-terms=Rolling+sales+update
###########################################

# Load packages

library (gdata)

library (plyr)

# From the data set rollingsales_queens.csv, the variable class.building.category use only values that correspond to either 1, 2 or 3 family homes, and put it in a data frame called bk.homes

bk.homes <- bk.sale[which(grepl("FAMILY",bk.sale$building.class.category)),]

# Get dimensions of bk.homes

dim(bk.homes)

# Use summary to obtain only those homes, which sale price is less than 100,000

summary(bk.homes[which(bk.homes$sale.price.n<100000),])

# Remove outliers present by applying an algorithm base 10 to data frame bk.sale in regards to the sale.price.n variable correlating bk.homes and sale.price.n price

bk.homes$outliers <- (log10(bk.homes$sale.price.n) <=5) + 0

# Remove from bk.homes any value from the previous frame that equals to 0

bk.homes <- bk.homes[which(bk.homes$outliers==0),]

