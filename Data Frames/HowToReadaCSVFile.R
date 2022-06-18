



#Method 1: Select The File Manually
stats <- read.csv(file.choose())
stats

#Method 2: Set WD and Read Data
getwd()
setwd("C:\\Users\\marcg\\Desktop\\R\\R programming A-Z\\Data Frames")
getwd()
stats <- read.csv("P2-Demographic-Data.csv")
stats
