library(readr)
gapminder_FiveYearData <- read.csv("data/gapminder-FiveYearData.csv")
object.size(gapminder_FiveYearData)
nrow(gapminder_FiveYearData)
str(gapminder_FiveYearData)

dput(head(gapminder_FiveYearData))


cats <- read.csv(file = "data/feline-data.csv")
x<-c(1,1,12)
if(x>10) print("x is greater than 10") # doesn't work
if(any(x>10)) print("x is greater than 10") # doesn't work


# write loop
system.time({
  output_vector <- vector(1000*length(LETTERS),mode="character")
  for(i in 1:1000){
    k <- 0
    for(j in LETTERS){
      temp_output <- paste(i, j)
      output_vector[i*26 +k] <- temp_output
      k <- k+1
    }
  }
  output_vector
})


system.time({
  output_vector <- c()
  for(i in 1:1000){
    for(j in LETTERS){
      temp_output <- paste(i, j)
      output_vector <- c(output_vector, temp_output)
    }
  }
  output_vector
})

# gapminder
library(ggplot2)
gapminder <- read.csv("data/gapminder-FiveYearData.csv")
ggplot(data=gapminder,aes(x=year, y=lifeExp, by=country, color=continent)) +
  geom_line() +
  scale_y_log10()

ggplot(data = gapminder) +
  geom_point(aes(x=gapminder,y=lifeExp,size=pop)) +
  geom_line(aes(x=year, y=lifeExp, by=country, color=continent))

# combine function
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}

kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

fahr_to_kelvin(32) %>% kelvin_to_celsius()

a <- 3
