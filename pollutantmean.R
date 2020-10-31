polluantmean <- function(){
    files <- list.files("./specdata")
    
    for (i in files) {
      data <- read.csv(i)
    }
  
    data <- data.frame(data)
}