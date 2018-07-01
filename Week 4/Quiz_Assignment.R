#Question 1
best("SC", "heart attack")
#MUSC MEDICAL CENTER

#Question 2
best("NY", "pneumonia")
#MAIMONIDES MEDICAL CENTER

#Question 3
best("AK", "pneumonia")
#YUKON KUSKOKWIM DELTA REG HOSPITAL

#Question 4
rankhospital("NC", "heart attack", "worst")
#WAYNE MEMORIAL HOSPITAL

#Question 5
rankhospital("WA", "heart attack", 7)
#YAKIMA VALLEY MEMORIAL HOSPITAL

#Question 6
rankhospital("TX", "pneumonia", 10)
#SETON SMITHVILLE REGIONAL HOSPITAL

#Question 7
rankhospital("NY", "heart attack", 7)
#BELLEVUE HOSPITAL CENTER

#Question 8
r <- rankall("heart attack", 4)
as.character(subset(r, state == "HI")$hospital)
#CASTLE MEDICAL CENTER

#Question 9
r <- rankall("pneumonia", "worst")
as.character(subset(r, state == "NJ")$hospital)
#BERGEN REGIONAL MEDICAL CENTER

#Question 10
r <- rankall("heart failure", 10)
as.character(subset(r, state == "NV")$hospital)
#RENOWN SOUTH MEADOWS MEDICAL CENTER