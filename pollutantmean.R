polluantmean <- function(directory, pollutant, id = 1:332){
    files <- list.files(path= directory, full.names = TRUE , pattern=".csv")
    
    first <- id[1]
    
    for (i in id) {
        if (i== first) {
          data <- read.csv(files[i], sep=",", row.names = 1)
          }
        else{
          new_data <- read.csv(files[i], sep=",", row.names = 1)
          data <- rbind(data, new_data)
        }
    }
   
    lapply(data, mean, na.rm = TRUE)
    sapply(data, mean, na.rm = TRUE)
    result <-colMeans(data, na.rm = TRUE)
    
    result[pollutant]
}


complete <- function(directory, ids = 1:332){
  files <- list.files(path= directory, full.names = TRUE , pattern=".csv")
  
  first <- ids[1]
  
  for (i in ids) {
    if (i== first) {
      data <- read.csv(files[i], sep=",", row.names = 1)
    }
    else{
      new_data <- read.csv(files[i], sep=",", row.names = 1)
      data <- rbind(data, new_data)
    }
  }
  
  for (j in id)s {
    summary_data <- data.frame(id =j, nobs = sum(data, na.rm=TRUE))
  }
  
  summary_data
}