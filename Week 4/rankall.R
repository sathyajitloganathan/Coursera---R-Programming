rankall <- function(outcome,num = "best"){
        outcomes <- read.csv("outcome-of-care-measures.csv", colClasses="character")

        if(outcome == "heart attack") m_col <- 11
        else if(outcome == "heart failure") m_col <- 17
        else if(outcome == "pneumonia") m_col <- 23
        else stop("invalid outcome")
        
        outcomes[,11] <- as.numeric(outcomes[,11])
        outcomes[,17] <- as.numeric(outcomes[,17])
        outcomes[,23] <- as.numeric(outcomes[,23])
        
        sel_state <- split(outcomes[,c(2,7,m_col)],outcomes$State)
        
        
        print(n)
        print("here")
        result <- data.frame(hospital=NULL,state=NULL)
        
        for(d in sel_state){
                
                #d<-sel_state[["AL"]]
                
                o_hosp <- order(d[,3],d[,1],d[,2])
                
                d <- d[o_hosp,]
                d[,3] <- as.numeric(d[,3])
                na_rm_d <- d[!is.na(d[,3]),]

                if(num == "best") n <- 1
                else if(num == "worst") n <- dim(na_rm_d)[1]
                else if(n > nrow(na_rm_d)) {
                        #print(paste(n, " n is here"))
                        #print(na_rm_d[,2][n])
                        #print(n > nrow(na_rm_d))
                        result <- rbind(result,data.frame(hospital = NA, state = na_rm_d[,2][n]))
                        next
                }
                else n <- num
          
                result <- rbind(result,data.frame(hospital = na_rm_d[,1][n], state = na_rm_d[,2][n]))

        }
        result
}

rankall("heart attack", 20)
head(rankall("heart attack", 20), 10)

ans <- data.frame(s=NULL,r=NULL)

for(i in 1:10){
        ans <- rbind(ans,data.frame(s=i,r=i+1))
}

ans