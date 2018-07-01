corr <- function(directory, threshold=0){
        
        #directory="specdata"
        
        all_files <- list.files(directory)
        file_paths <- paste("./",directory,"/",all_files,sep="")
        
        cr_id <- 1
        cr <- vector()
        for(i in 1:332){
                file_data <- read.csv(file_paths[i],header=T)
                
                #Retrieves all complete pairs
                values <- file_data[complete.cases(file_data[,2:3]),]
               
                
                #Checks for threshold of complete pairs within files and calculates the correlation
                if(nrow(values)>threshold) {
                        cr[cr_id] <- cor(values[2],values[3])
                        cr_id <- cr_id + 1
                }
        }
        cr
}

#functional test
source("corr.R")
cr <- corr("specdata",300)
head(cr)
summary(cr)

cr <- corr("specdata", 400)
head(cr)
summary(cr)

cr <- corr("specdata", 5000)
summary(cr)

cr <- corr("specdata")
summary(cr)

length(cr)