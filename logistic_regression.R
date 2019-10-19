play<-c(1,0,1,0,1,1,1,1,1,0)
outlook<-c(1,1,2,3,1,3,1,3,2,3)
Temperature<-c(1,1,2,3,1,1,1,2,3,3)
Humidity<-c(1,1,2,2,1,1,1,1,2,2)
Wind<-c(FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE)
play_decision = data.frame(play, outlook, Temperature, Humidity, Wind)
play_decision

fit <- glm(play ~ outlook+Temperature+Humidity+Wind,
           data = play_decision,
           family = binomial(link="logit"))

fit2 <- glm(play ~ outlook+Humidity+Wind,
           data = play_decision,
           family = binomial(link="logit"))

glm (Churned-Age + Married + Cust_years +
       Churned_contacts, data=churn_input,
     family=binomial(link="logit"))