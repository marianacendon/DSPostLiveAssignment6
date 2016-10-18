########################
# Download and clean data set rollingsales_queens.xls dowloaded from Official New York City Website 
# Mariana Llamas-Cendon
# DS Post Live Assignment 6
# Updated Oct 15 2016
# Data downloaded from: http://www1.nyc.gov/home/search/index.page?search-terms=Rolling+sales+update
#########################


#packages required: (plyr)


library(gdata)
library(plyr)

# Data originally in .xls
# File was saved as .csv, therefore use read.csv

bk <- read.csv("Data/rollingsales_queens.csv", skip = 4, header = TRUE)

# Explore the data set

head(bk)
str(bk)

# Convert variables from upper to lower case

names(bk) <- tolower(names(bk))

# Clean variable sale.price getting rid of characters that aren't digits, and coerce it into a numeric type instead of a factor
## Create new clean variable called sale.price.n

bk$sale.price.n <- as.numeric(gsub("[^[:digit:]]","", bk$sale.price))

# Count missing values (NA) in sale.price.n

count(is.na(bk$sale.price.n))

# Clean variable groos.square.feet, getting rid of anything other than digits, coerce it into a numeric type instead of factor
## Create new variable named gross.sqft

bk$gross.sqft <- as.numeric(gsub("[^[:digit:]]","", bk$gross.square.feet))

# Clean variable land.square.feet getting rid of anything other than digits, coerce it into a numeric type instead of factor
## Create new variable called land.sqft

bk$land.sqft <- as.numeric(gsub("[^[:digit:]]","", bk$land.square.feet))

# Clean variable year.built, getting rid of anything other than digits, coerce it from an integer type to a numeric type

bk$year.built <- as.numeric(as.character(bk$year.built))

# Explore sale.price.n

attach(bk)
hist(sale.price.n)
detach(bk)


