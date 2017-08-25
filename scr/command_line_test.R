library(readr)
gapminder_FiveYearData <- read.csv("data/gapminder-FiveYearData.csv")

args <- commandArgs()
file_name <- args[1]