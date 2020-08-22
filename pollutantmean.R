pollutantmean <- function(directory, pollutant, id=1:332){
  data <- list.files(path=directory, pattern=".csv")
  x <- numeric()
  for(i in id){
    meandata <- read.csv(data[i])
    k <- c(x, meandata[[pollutant]])
  }
  mean(k, na.rm=T)
}