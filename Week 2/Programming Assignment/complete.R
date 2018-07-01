complete <- function(directory, id = 1:332){
        
        #directory = "specdata"
        #pollutant="sulfate"
        #id=3
        
        all_files <- list.files(directory)
        file_paths <- paste("./",directory,"/",all_files,sep="")
        
        observations <- data.frame(id=integer(),nobs=integer())

        file_data <- data.frame()
        
        for(i in id){
                
                file_data <- read.csv(file_paths[i],header=T)
                #Retrieves all complete pairs
                nobs <- nrow(file_data[!(is.na(file_data[,3]) | is.na(file_data[,2])),])
                #creates a data frame of the current row and binds it to the observation data.frame
                ob <-data.frame(id=i,nobs=nobs)
                observations <- rbind(observations,ob)
        }
        
        observations
}

#functional test
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)
