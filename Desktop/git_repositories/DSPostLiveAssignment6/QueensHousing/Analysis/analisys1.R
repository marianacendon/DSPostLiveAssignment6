#############################
# Analysis of data set rollingsales_queens.csv
# Mariana Llamas-Cendon
# DS Post Live Assignment 6
# Updated 12 Oct 2016
# Data downloaded from: http://www1.nyc.gov/home/search/index.page?search-terms=Rolling+sales+update
#############################

# This file contains exploratory data for data for data frames bk.sale and bk.homes

# Load library

library (gdata)
library (plyr)

# Explore sale.price.n

attach(bk)
hist(sale.price.n)
dettach(bk)

# Plot bk.sale frame with gross.sqft and sale.price.n to visualize data 

plot(bk.sale$gross.sqft,bk.sale$sale.price.n)

# Plot with logaritm base 10 to view if a transformation would help eliminating outliers
plot(log10(bk.sale$gross.sqft),log10(bk.sale$sale.price.n))

# Using frame bk.homes do log plot base 10 combined with gross.sqft and sale.price.n

plot(log10(bk.homes$gross.sqft),log10(bk.homes$sale.price.n))

# After eliminating sale prices over a 100,000 and remove outliers from frame bk.homes. Explore data doing log base 10 plot for bk.homes combined with gross.sqft, and sale.price.n

plot(log(bk.homes$gross.sqft),log(bk.homes$sale.price.n))

