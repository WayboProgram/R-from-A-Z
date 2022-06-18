

#-----------------------Exploring Data
stats 
nrow(stats) #tells number of rows
ncol(stats) #tells number of columns
head(stats, n=8) #shows top 'n' rows
tail(stats) #shows last 6 rows by default
str(stats)
summary(stats)


#-----------------------Using $ sign
stats
head(stats)
stats[3,3]
stats$Internet.users
stats$Internet.users[2]
levels(stats$Income.Group)

#-----------------------Basic Operations With a Data Frame
stats[1:10,] #subsetting
stats[c(4,100),]

#operating columns
head(stats)
stats$Birth.rate * stats$Birth.rate
stats$Birth.rate + stats$Birth.rate

#add a column
head(stats)
stats$MyCalc <- stats$Birth.rate + stats$Birth.rate

#remove a column
stats$MyCals <- NULL
head(stats)


#----------------------- Filtering Data Frames
head(stats)
filter <- stats$Internet.users < 2
stats[filter,]

filterOne <- stats$Birth.rate > 40 & stats$Internet.users < 2
stats[filterOne,]

stats[stats$Country.Name == "Malta",]

#----------------------- Introduction to qpplot
library(ggplot2)
?qplot
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate)
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3))
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3), colour=I("blue"))
qplot(data=stats, x=Income.Group, y=Birth.rate, geom="boxplot")

#----------------------- Visualizing what we need
qplot(data=stats, x=Internet.users, y=Birth.rate, colour=Income.Group, size=I(4))

#----------------------- Creating Data Frames
mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, 
                   Regions_2012_Dataset)
head(mydf)
#colnames(mydf) <- c("Country", "Code", "Region")
#head(mydf)
rm(mydf)
mydf <- data.frame(Country=Countries_2012_Dataset, Code=Codes_2012_Dataset, 
                   Region=Regions_2012_Dataset)
head(mydf)
tail(mydf)
summary(mydf)

#----------------------- Merging Data Frames
merged <- merge(stats,mydf,by.x="Country.Code", by.y="Code")
head(merged)

merged$Country <- NULL
str(merged)
tail(merged)

#----------------------- Visualizing With new Split
#1. Shapes
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, size=I(2), shape=I(23))
#2. Transparency
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, size=I(2), shape=I(19), alpha=I(0.6))
#3. Title
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, size=I(2), shape=I(19), alpha=I(0.6), main="Birth rate vs. Internet Users")
