############################################
# Download and clean data set rollingsales_queens.xls dowloaded from Official New York City Website 
# Mariana Llamas-Cendon
# DS Post Live Assignment 6
# Updated Oct 15 2016
# Data downloaded from: http://www1.nyc.gov/home/search/index.page?search-terms=Rolling+sales+update
###########################################

## This file contain the steps to clean the created data frame bk.sale

# load packages

library(gdata)
library(plyr)

## Eliminate values that are equal to 0 from bk.sale data frame

bk.sale <- bk[bk$sale.price.n!=0,]