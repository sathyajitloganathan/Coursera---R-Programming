outcomes <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcomes)

ncol(outcomes)
nrow(outcomes)
names(outcomes)

outcomes[,11] <- as.numeric(outcomes[,11])
hist(outcomes[,11])

best <- function(state, outcome){
        outcomes <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
        
        states <- levels(as.factor(outcomes$State))
        
        if(!state %in% states) stop("Invalid State")
        
        if(outcome == "heart attack") m_col <- 11
        else if(outcome == "heart failure") m_col <- 17
        else if(outcome == "pneumonia") m_col <- 23
        else stop("Invalid Outcome")
        
        outcomes[,11] <- as.numeric(outcomes[,11])
        outcomes[,17] <- as.numeric(outcomes[,17])
        outcomes[,23] <- as.numeric(outcomes[,23])
        
        #state <- "AL"
        
        stateOutcomes <- split(outcomes, outcomes$State)
        
        sel_state <- stateOutcomes[[state]][,c(2,m_col)]
        names(sel_state)
       

        o_hosp <- order(sel_state[,2],sel_state[,1])

        sel_state[o_hosp,][,1:2]
        sel_state[o_hosp[1],][,1]
}

# Tests for function best
best("TX", "heart attack")
best("TX", "heart failure")
best("MD", "heart attack")
best("MD", "pneumonia")

best("BB", "heart attack")
best("NY", "hert attack")

## Extra work outs to understand functions

names(outcomes)
outcomes[,c(2,13,14)]
outcomes[1:40,29]

outcomes[,11]

ii <- order(x <- c(1,1,3:1,1:4,3), y <- c(9,9:1), z <- c(2,1:9))

rbind(x,y,z)[, ii]
rm(x,y,z)
x
