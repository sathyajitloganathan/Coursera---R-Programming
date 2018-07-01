rankhospital <- function(state,outcome,num = "best"){
        outcomes <- read.csv("outcome-of-care-measures.csv", colClasses="character")
        
        states <- levels(as.factor(outcomes$State))
        
        if(!state %in% states) stop("invalid state")
        
        if(outcome == "heart attack") m_col <- 11
        else if(outcome == "heart failure") m_col <- 17
        else if(outcome == "pneumonia") m_col <- 23
        else stop("invalid outcome")
        
        outcomes[,11] <- as.numeric(outcomes[,11])
        outcomes[,17] <- as.numeric(outcomes[,17])
        outcomes[,23] <- as.numeric(outcomes[,23])
        
        #state <- "TX"
        
        sel_state <- split(outcomes,outcomes$State)[[state]][,c(2,m_col)]
        
        o_hosp <- order(sel_state[,2],sel_state[,1])
        
        sel_state <- sel_state[o_hosp,]
        na_rm_sel_state <- sel_state[!is.na(sel_state[,2]),]
        
        if(num == "best") n <- 1
        else if(num == "worst") n <- dim(na_rm_sel_state)[1]
        else if(num <= nrow(na_rm_sel_state)) n <- num
        else return(NA)
        
        print(na_rm_sel_state)
        
        na_rm_sel_state[,1][n]
        
}

# Testing function
rankhospital("TX", "heart failure", 4)
rankhospital("MD", "heart attack", "worst")
rankhospital("MN", "heart attack", 5000)

# Extras
nrow(sel_state)
dim(sel_state)
names(outcomes)
