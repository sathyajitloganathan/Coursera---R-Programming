pollutantmean <- function(directory, pollutant, id = 1:332){
        
        #testing purposes
        #directory = "specdata"
        #pollutant="sulfate"
        #id=1:10
        
        #Obtains all files in the specified directory
        all_files <- list.files(directory)
        #Appends path to the all the files
        file_paths <- paste("./",directory,"/",all_files,sep="")

        file_data <- data.frame()
        pollutant_values <- c()
        pollutant_sum <- 0
        pollutant_length <- 0
        
        for(i in id){
                #reads file data one at a time
                file_data <- read.csv(file_paths[i],header=T) 
                
                #retrieves all values of pollutant removing NA terms
                pollutant_values <- file_data[!is.na(file_data[,pollutant]),pollutant]
                
                #cumulatively sums up all the pollutant values
                pollutant_sum <- pollutant_sum + sum(pollutant_values)

                #cumulatively adds the length obtained on each matrix        
                pollutant_length <- pollutant_length + length(pollutant_values)
        }
        
        #calculates the mean
        pollutant_sum/pollutant_length
}

# functional test
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)

